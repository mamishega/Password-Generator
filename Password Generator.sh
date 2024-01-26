#!/bin/bash

# Secure Password Generator Script

echo "Secure Password Generator"
echo "Please enter the length of the password: "
read -s PASSWORD_LENGTH
# Use -s option to hide user input (silent mode) for password entry.

# Validate the entered password length to ensure it is a positive integer.
if [[ ! $PASSWORD_LENGTH =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid positive integer for password length."
    exit 1
fi

for i in {1..1}; do
    # Loop runs only once for a single password generation.

    # Generate a 48-character base64-encoded string and filter out non-alphanumeric characters.
    # Then, use head to limit the password to the desired length.
    password=$(openssl rand -base64 48 | tr -dc 'a-zA-Z0-9' | head -c $PASSWORD_LENGTH)

    # Display the generated password.
    echo "Generated Password: $password"
done
# End of the loop.
