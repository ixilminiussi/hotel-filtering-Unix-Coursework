#!/bin/bash

if [ -f "$1" ]

then

	grep -c "<Author>" "$1"

fi

if [ -d "$1" ]

then
	for entry in "$1"/*
	do
		grep -c "<Author>" "$entry"
	done

fi

if [ ! -f "$1" ] && [ ! -d "$1" ]

then
	echo "put file or directory as argument"

fi
