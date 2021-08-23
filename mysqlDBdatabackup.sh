#!/bin/bash #shebang

mysqldump -h db_host.rds.aws.com -u dbuser -p welcome1 dbflipkart > /db-backup/db_flipkart.sql
