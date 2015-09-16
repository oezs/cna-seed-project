#!/bin/bash

service mysql start
mysql < /create_db.sql
mysql < /create_user.sql
mysql zurmo < /zurmo.sql
service mysql stop

mysqld_safe

tail -f /create_user.sql
