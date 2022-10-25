#!/bin/sh

WRITEFILE=""
WRITESTR=""

if [ $# -lt 2 ]
then
	echo "Two arguments required"
  exit
else
	WRITEFILE=$1
	WRITESTR=$2
fi

echo $WRITESTR >> $WRITEFILE