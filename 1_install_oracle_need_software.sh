#!/bin/bash

while read LINE
do
  yum install -y $LINE 2>> oracle_install_soft.err
done < oracle_need_software.txt
