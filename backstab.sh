#!/bin/bash
################################################
# Script Name:     backstab.sh
# Written by:      Michael H. Roberts
# Creation Date:   Wed 07 Sep 2016 @ 16:09:16
################################################
source /home/zobcloud/.scripts/functions.sh
# copies the config.xml file from pfsense
scp -P1569 backup@10.10.1.1:/cf/conf/config.xml /home/zobcloud
# function to rename the backed up file
renameBackup
# backup command for the wiki database within mysql
mysqldump -u root -pMosey@5641 my_wiki | gzip -9 > /home/zobcloud/NATCAwikiBackup.sql.gz
# function to rename the backed up database
renameWikiBackup
# if the pfsense file is present, then use dropbox-uploader.sh to transfer to dropbox
if [ -f /home/zobcloud/pfsense* ]
then dropup -p upload /home/zobcloud/pfsense* zob
fi
# if the sql file is present, then use dropbox-uploader.sh to transfer to dropbox
if [ -f /home/zobcloud/NATCA* ]
then dropup -p upload /home/zobcloud/NATCA* zob
fi
# next two lines remove the old files, to not confuse the above if statements
rm /home/zobcloud/pfsense*
rm /home/zobcloud/NATCA*

grep CRON /var/log/syslog | grep zobcloud | mail -s "This is what Cron did..." zobcloud@gmail.com


# If config.xml is in backdrop folder
# rename with current date

# set cron to run once a day

