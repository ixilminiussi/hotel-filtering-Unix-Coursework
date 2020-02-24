#!/bin/bash

if [ -f "$1" ]

then

	grep -c "<Author>" "$1"

fi
