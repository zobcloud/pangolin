#!/bin/bash
################################################
# Script Name:     maintenance.sh
# Written by:      Michael H. Roberts
# Creation Date:   Wed 29 Apr 2015 @ 16:43:00
################################################
echo "PASSWORD" | sudo -S apt -y update
echo "PASSWORD" | sudo -S apt -y upgrade
echo "PASSWORD" | sudo -S apt -y dist-upgrade
echo "PASSWORD" | sudo -S apt -y autoremove
echo "PASSWORD" | sudo -S apt -y autoclean
