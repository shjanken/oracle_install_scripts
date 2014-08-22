#!/bin/bash

CONFIG_FILE=/etc/security/limits.conf

function modify(){
cat >> $CONFIG_FILE << EOF
oracle	soft	nofile 	1024
oracle	hard	nofile	65536	
oracle	soft	nproc 	2047
oracle	hard	nproc	16384	
oracle	soft	stack 	10240
oracle	hard	stack	32768	
EOF
}

if [ -f $CoNFIG_FILE ]; then
  modify
else 
  echo "no config file exists! process failure"
fi
