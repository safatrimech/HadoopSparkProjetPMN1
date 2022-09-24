#!/bin/bash 
path=/user/input/*
if hdfs dfs -test -s $path; then
   echo "le fichier input n'est pas vide"
else
   echo "le dossier input est vide"
fi
