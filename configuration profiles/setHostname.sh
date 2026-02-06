#!/bin/bash

# Get the device's serial number
SERIAL_NUMBER=$(dmidecode -s system-serial-number)

# Define the new device name with the serial number appended
NEW_HOSTNAME="C-$SERIAL_NUMBER"

# Change the hostname
hostnamectl set-hostname $NEW_HOSTNAME

# Update /etc/hostname
echo $NEW_HOSTNAME | tee /etc/hostname

# Update /etc/hosts
CURRENT_HOSTNAME=$(hostname)
sed -i "s/$CURRENT_HOSTNAME/$NEW_HOSTNAME/g" /etc/hosts