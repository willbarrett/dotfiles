#!/bin/bash

shopt -s dotglob
shopt -s nullglob

dirs=(*/)

for dir in "${dirs[@]}";
do
  echo "$dir";
  cd "$dir";
  git checkout master;
  git pull;
  cd ..;
done
