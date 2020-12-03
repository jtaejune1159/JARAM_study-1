#!/bin/bash

make
echo "" > testcase
./hello.out testcase > output_r
./hello_user.out testcase > output

diff output_r output > difflog

echo "===========================" >> log
if grep "<" difflog;then
	echo -e "Test Case : 1		" "\033[31mX\033[0m" >> log
else
	echo -e "Test Case : 1		" "\033[32mV\033[0m" >> log
fi
echo "===========================" >> log

make fclean
clear

cat log
rm log
rm output
rm output_r
rm difflog




