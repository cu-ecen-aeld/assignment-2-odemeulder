#!/bin/sh

FILESDIR=""
SEARCHSTR=""

if [ $# -lt 2 ]
then
	echo "Two arguments required"
  exit
else
	FILESDIR=$1
	SEARCHSTR=$2
fi

X=0
Y=0

X=$(grep -lR $SEARCHSTR $FILESDIR | wc -l)
Y=$(grep -r $SEARCHSTR $FILESDIR | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
