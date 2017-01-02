#!/bin/bash
################################################
# Script Name:     functions.sh
# Written by:      Michael H. Roberts
# Creation Date:   Sun 01 Jan 2017 @ 17:01:38
################################################

renameBackup()
{
	configFile="/home/zobcloud/config.xml"
	if [ -f "$configFile" ]
	then mv "$configFile" "/home/zobcloud/pfsenseNATCA.$(date +%Y-%m-%d-%H:%M:%S).config.xml"
	fi
}
renameWikiBackup()
{
	configFile="/home/zobcloud/NATCAwikiBackup.sql.gz"
	if [ -f "$configFile" ]
	then mv "$configFile" "/home/zobcloud/NATCAwikiBackup.$(date +%Y-%m-%d-%H:%M:%S).sql.gz"
	fi
}
