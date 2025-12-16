#!/bin/bash -e

#NOTE: Kali frequently complains after only days or weeks that it is missing some type of keyring
#or GPG component to update using apt. This script addresses that and allows those updates to happen

{ sudo wget https://archive.kali.org/archive-keyring.gpg -O /usr/share/keyrings/kali-archive-keyring.gpg; } || \
echo "Error - failed to update keys" && exit 1 

echo "Finished!" 
exit 0


