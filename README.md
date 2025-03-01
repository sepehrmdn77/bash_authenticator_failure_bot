# bash_authenticator_failure_bot

## Project Overview
**bash_authenticator_failure_bot** is a simple yet powerful tool designed to monitor and alert on authentication failures on a system. This bash script continuously checks system logs for authentication failures and sends notifications to the system administrator.

## Features
- **Real-time Monitoring:** Continuously monitors system logs for authentication failures.
- **Notifications:** Sends alerts to the system administrator in case of authentication failures.
- **Customization:** Easily configurable to fit different system requirements.

## Prerequisites
Before using this project, ensure you have the following software installed on your system:
- Bash shell (version 4.0 or higher)
- Access to system log files

## Installation and Setup
Follow these steps to get started with this project:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/sepehrmdn77/bash_authenticator_failure_bot.git
   cd bash_authenticator_failure_bot

2. **Configure the script:**
Open the script file auth_failure_bot.sh and configure the required variables such as log file path, notification method, and recipient email address.

3. **Set up a cron job:**
Schedule the script to run at regular intervals using cron. For example, to run the script every 5 minutes, add the following line to your crontab:
    '''bash
    */5 * * * * /path/to/auth_failure_bot.sh

## Usage

Once set up, the script will automatically monitor the system logs for authentication failures and send notifications as configured. You can also run the script manually by executing:
    '''bash
    ./auth_failure_bot.sh

## Contributing

We welcome contributions to this project. Please fork the repository, make your changes, and submit a pull request.

## Author

Sepehr Maadani - [sepehrmdn77](https://github.com/sepehrmdn77)
