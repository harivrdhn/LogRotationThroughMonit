#!/bin/bash
mylogcount=`ls -ltrh $1* | wc -l`
if test $mylogcount -gt $2;  then
        file=`ls -tr $1* | head -n 1`
        rm -f $file
fi
/bin/mv $1 $1.`date +%y-%m-%d-%H-%M`
