# Active Directory User Management

This project aims to automate common user management tasks in Active Directory using a PowerShell script. It allows for easy creation, modification, and disabling of user accounts, streamlining the administrative process.

## Prerequisites
Before using this script, ensure that the following requirements are met:

Windows machine with PowerShell installed
Active Directory module imported (Import-Module ActiveDirectory)
## Usage
Clone the repository to your local machine or download the script file (user_management.ps1).

Open a PowerShell window and navigate to the directory where the script is located.

Modify the script's variables with the desired user information:

$firstName: First name of the user.
$lastName: Last name of the user.
$username: Desired username for the user.
$password: Password for the user account.
Run the script by executing the command: .\user_management.ps1

The script will perform the following tasks:

Create a new user account with the provided information.
Modify user attributes (e.g., add a description) as specified.
Disable the user account.
Note: Review and customize the script's functions to suit your specific user management requirements.


## Disclaimer
Please use this script responsibly and ensure that you have the necessary permissions and authorization to perform user management tasks in your Active Directory environment. The script is provided as-is and the authors cannot be held responsible for any misuse or unintended consequences.

Feel free to update the README file with additional information or sections as needed, such as troubleshooting tips, examples of usage scenarios, or any other relevant details specific to your project.
