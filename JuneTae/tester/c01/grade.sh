#!/bin/bash

make

echo "===========================" >> log

for input in {1..10}
do
echo $input
./stars.out $input > output_r
./stars_user.out $input > output
diff output_r output > difflog



if grep "<" difflog;then
echo -e "Test Case : $input		" "\033[31mX\033[0m" >> log
else
echo -e "Test Case : $input		" "\033[32mV\033[0m" >> log
fi

done

echo "===========================" >> log

make fclean
clear
cat log
rm log
rm output
rm output_r
rm difflog
