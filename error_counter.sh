#!/usr/bin/env bash
log="$(journalctl --since "-1 minutes" | grep "authentication failure")" # Defining log for every 1 minute and grep af
add_line_numbers() { # Defining first function to count failures
    local line_number=0
    while IFS= read -r line; do # Separating lines
        ((line_number++)) # Add error counts for each line
    done
    echo $line_number # Getting line numbers as failures count output
}
main (){ # Defining second function to use log and pipe it to first function
    input=$log
    echo "$input" | add_line_numbers
}
declare -i x=$(main) # Here we have the authentication failure as $x
y=$(eval echo {0..$x}) # Getting error counts range

TOKEN="BOT_TOKEN" # Your telegram bot token
CHAT_ID="CHAT_ID" # Your chat ID
MESSAGE="Failure attempt in login!" # Failure text

for i in $y; do
    if (($i>1));then # if there is 0 errors nothing will be done
        curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" -d chat_id=$CHAT_ID -d text="$MESSAGE" # Sending failure mesg
    fi
done
(crontab -l 2>/dev/null; echo "* * * * * /path/to/your/project.sh") | crontab # Removing existing cron job and adding new cron job
echo
