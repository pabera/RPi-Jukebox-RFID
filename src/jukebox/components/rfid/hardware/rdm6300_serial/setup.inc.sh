#!/usr/bin/env bash

source ../../../../../../installation/includes/02_helpers.sh

echo "Entering setup.inc.sh"

echo "Disabling login shell to be accessible over serial"
sudo raspi-config nonint do_serial_hw 1
sudo raspi-config nonint do_serial_cons 1

echo "Enabling serial port hardware"
sudo raspi-config nonint set_config_var enable_uart 1 "$(get_boot_config_path)"

echo -e "\nREBOOT for changes to take effect!\n"

