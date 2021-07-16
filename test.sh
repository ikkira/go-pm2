#!/bin/sh
pm2 pid app
if [ $? > 0 ]
then
    exit 0
else
    exit 1
fi