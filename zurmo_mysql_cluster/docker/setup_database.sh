#!/bin/bash

if [ $isPC == "true" ]
then
#service mysql start --wsrep_provider=/usr/lib/galera/libgalera_smm.so --wsrep_cluster_address=gcomm://172.17.0.3:4567 --wsrep_sst_method=rsync --wsrep_cluster_name=galera_cluster --addresswsrep_node_address=172.17.0.5

mysqld --wsrep_provider=/usr/lib/galera/libgalera_smm.so --wsrep_cluster_address=gcomm://172.17.0.5:4567 --wsrep_sst_method=rsync --wsrep_cluster_name=galera_cluster --wsrep_node_address=172.17.0.3 --wsrep-new-cluster

mysql < /create_db.sql
mysql < /create_user.sql
mysql zurmo < /zurmo.sql
else
mysqld --wsrep_provider=/usr/lib/galera/libgalera_smm.so --wsrep_cluster_address=gcomm://172.17.0.3:4567 --wsrep_sst_method=rsync --wsrep_cluster_name=galera_cluster --addresswsrep_node_address=172.17.0.5
fi

service mysql stop
mysqld_safe

tail -f /create_user.sql
