#!/bin/sh
awk 'BEGIN {print "\n",strftime("%F%a"),"\n"}{print $0}' "$1" |tee -a README.md
