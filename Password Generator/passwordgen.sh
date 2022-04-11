#! /bin/bash

echo "Enter the amount of characters and passwords you want: "
read PASS_LENGTH PASS_NUMB

for p in $(seq 1 $PASS_NUMB); do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
