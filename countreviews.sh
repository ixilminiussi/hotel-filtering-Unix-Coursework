#!/bin/bash

declare -A file_maps

if [ -f "$1" ]

then

	grep -c "<Author>" "$1"

fi

if [ -d "$1" ]

then
	
	for entry in "$1"/*
	do
		echo $entry $(grep -c "<Author>" "$entry")
	done | sort -rn -k2 

fi

if [ ! -f "$1" ] && [ ! -d "$1" ]

then
	echo "put file or directory as argument"

fi
