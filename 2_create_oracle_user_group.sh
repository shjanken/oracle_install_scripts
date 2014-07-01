#!/bin/bash

OINSTALL='oinstall'
DBA='dba'
ORACLE='oracle'
ORACLE_BASE='/u01/app'
ORACLE_HOME='/u01/app/product/11g'

if [ ! groupadd $OINSTALL 2> /dev/null ]
then
  echo "$OINSTALL group already exists!"
fi

if [ ! groupadd $DBA 2> /dev/null ]
then
  echo "$DBA group already exists!"
fi

#if [ useradd -g $OINSTALL -G $DBA $ORACLE 2> /dev/null ]
#then
#  echo "group and user add success! plz check it"
#  exit 0
#elif [ id $ORACLE ]
#then 
#  usermod -g $OINSTALL -G $DBA $ORACLE
#  exit 0
#else
#  echo "user add failure!"
#  exit 2
#fi

id $ORACLE 2>&1>/dev/null
ID_RESULT=$?

if [ $ID_RESULT -eq 0 ]
then
  usermod -g $OINSTALL -G $DBA $ORACLE
  echo "oracle" | passwd oracle --stdin
  echo user already exists .change the group
else
  useradd -g $OINSTALL -G $DBA $ORACL
  echo "oracle" | passwd oracle --stdin
  echo add user success
fi

mkdir -p $ORACLE_BASE
mkdir -p $ORACLE_BASE/oracle/product/11g
chown -R $ORACLE:$OINSTALL $ORACLE_BASE
chmod -R 755 $ORACLE_BASE

exit 0
