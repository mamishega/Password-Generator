 Secure Password Generator Script

Description
This is a simple Bash script that generates secure passwords of a specified length using OpenSSL. It ensures the generated passwords contain only alphanumeric characters, making them suitable for various security purposes.

Usage
1. Run the script: `./secure_password_generator.sh`
2. Enter the desired length of the password when prompted.
3. The script will generate a secure password and display it.

Requirements
- Bash: The script is designed to run on a Bash shell.
- OpenSSL: Ensure that OpenSSL is installed on your system.

How it Works
The script uses OpenSSL to generate a 48-character base64-encoded string and then filters out non-alphanumeric characters. The resulting string is truncated to the desired password length.

Note
- Ensure that you have OpenSSL installed on your system for the script to work correctly.



Feel free to modify and share this script according to your needs!

