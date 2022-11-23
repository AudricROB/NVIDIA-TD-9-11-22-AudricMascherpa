#!/bin/bash
date=$(date +%Y-%m-%d-%H-%M-%S) 
bzip2 -fk /<path>/database_$date.sql          #save the file in bz2 format
         
mv database.sql.bz2 <filename>/$nom.bz2          #change the name of the file to the date: year, month, day, hour, minute, second
logfile="/var/log/dump-mysql.log"
echo "$date : Database backup has been created">> $logfile

number_of_files=$(ls -F /<path> | wc -l)          #number of files in directory
if [ "$number_of_files" -gt 5 ];          #if there are no more than 5 files in backup
then 
    echo "$date : The oldest save will be removed." >> $logfile
    rm /<path>/"$(ls -t /<path> | tail -1)"; 
    echo "$date : The oldest backup has been removed" >> $logfile
fi
