#!/bin/bash
input=/user/input
le_continue_d_input=/user/input/*
if hdfs dfs -test -d $input; then
   echo "le fichier $input. Suppression de son contenu en cours"
   hadoop fs -rm -f $le_continue_d_input
else
   echo "le fichier $input n'existe pas"
fi

