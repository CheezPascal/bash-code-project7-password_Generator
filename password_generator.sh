#!/bin/bash

# Password Generator
echo
echo "$(printf '#%.0s' {1..40})"
echo "##                                    $(printf '#%.0s' {1..2})"
echo "##                                    $(printf '#%.0s' {1..2})"
echo

read -p "Enter password length: " length
password=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c "$length")
echo "Generated Password: $password"

echo
echo "##                                    $(printf '#%.0s' {1..2})"
echo "##                                    $(printf '#%.0s' {1..2})"
echo "$(printf '#%.0s' {1..40})"
