#!/usr/bin/env bash
path=/user/input
dossier=$path+$1
if hdfs dfs -test -f $dossier; 
then
    echo 'le dossier existe deja'
else
    echo 'Copying!'
    hadoop fs -put -p $1 $path
fi

