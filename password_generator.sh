#!/bin/bash


###################
#Author: Anirban Banerjee
#Date: 3rd Jan 2025
#Description: This script generates a random password.
###################

######********Password Generator********######

read -p "Enter the length of the password: " PASS_LENGTH

for p in $(seq 1);
do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

