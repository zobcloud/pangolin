#!/bin/bash
################################################
# Script Name:     maintenance.sh
# Written by:      Michael H. Roberts
# Creation Date:   Wed 29 Apr 2015 @ 16:43:00
################################################
echo "ohms676@feeble" | sudo -S  apt-get -y update
echo "ohms676@feeble" | sudo -S apt-get  -y upgrade
echo "ohms676@feeble" | sudo -S apt-get  -y dist-upgrade
echo "ohms676@feeble" | sudo -S apt-get -y autoremove
echo "ohms676@feeble" | sudo -S apt-get -y autoclean
