# Import the Active Directory module
Import-Module ActiveDirectory

# Define variables for user information
$firstName = "John"
$lastName = "Doe"
$username = "johndoe"
$password = "P@ssw0rd"

# Function to create a new user account
function Create-NewUser {
    param (
        [string]$firstName,
        [string]$lastName,
        [string]$username,
        [string]$password
    )

    # Generate a secure password
    $securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force

    # Create the user account
    New-ADUser -SamAccountName $username -GivenName $firstName -Surname $lastName -UserPrincipalName "$username@yourdomain.com" -Enabled $true -PasswordNeverExpires $true -AccountPassword $securePassword
}

# Function to modify user attributes
function Modify-UserAttributes {
    param (
        [string]$username,
        [string]$attributeName,
        [string]$attributeValue
    )

    # Set the specified attribute value for the user
    Set-ADUser -Identity $username -Replace @{ $attributeName = $attributeValue }
}

# Function to disable a user account
function Disable-UserAccount {
    param (
        [string]$username
    )

    # Disable the user account
    Set-ADUser -Identity $username -Enabled $false
}

# Call the functions to perform user management tasks
Create-NewUser -firstName $firstName -lastName $lastName -username $username -password $password
Modify-UserAttributes -username $username -attributeName "Description" -attributeValue "Regular User"
Disable-UserAccount -username $username
