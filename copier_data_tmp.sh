#!/usr/bin/env bash
dossier=/user/data_tmp
input=/user/input
if hdfs dfs -test -d $dossier; 
then
    echo 'le dossier data_tmp existe deja'
else
echo "data_tmp crée"
    hadoop fs -mkdir $dossier
    echo 'le contenue d input est entrain d etre copier'
    hadoop fs -cp -p $input $dossier
fi
