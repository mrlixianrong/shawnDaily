#!/bin/sh
fname="`date +%a%F`.en.md"
echo mv draft $fname
mv draft $fname
cat $fname

awk 'BEGIN {print "\n",strftime("%F%a"),"\n"}{print $0}' $fname >> README.md
cat README.md
