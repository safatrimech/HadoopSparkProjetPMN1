#!/bin/bash
tmp=/user/data_tmp
if hdfs dfs -test -d $tmp; then
   echo "le fichier $tmp  existe deja !!!suppression en cours"
   hadoop fs -rm -r $tmp
else

   echo "le fichier $tmp n'existe pas"
fi
