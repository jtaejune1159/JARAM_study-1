#!/bin/bash

make
echo "" > testcase
./hello.out testcase > output_r
./hello_user.out testcase > output

diff output_r output > difflog

echo "===========================" >> log
if grep "<" difflog;then
	echo "Test Case : 1	    X" >> log
else
	echo "Test Case : 1     V" >> log
fi
echo "===========================" >> log

make fclean
clear

cat log
rm log
rm output
rm output_r
rm difflog




