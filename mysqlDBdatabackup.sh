#!/bin/bash #shebang
v_dbName=$1
v_username=$(cat cred | grep username|awk -F"=" '{print $2}')
v_password=$(cat cred | grep username|awk -F"=" '{print $2}')
v_dbhost=db_host.rds.aws.com
echo "mysqldump -h $v_dbhost -u $v_username -p $v_password $v_dbName > /db-backup/$v_dbName.sql"
