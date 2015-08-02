#!/bin/bash

while read file
do
    mv -v $file $1
    shift
done
