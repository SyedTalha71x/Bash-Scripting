#!/bin/bash

read -p "Enter a number = " NUM
echo

if [ $NUM -gt 100 ]
then
echo "We have entered in a if block"
sleep 3
echo "Your $NUM number is greater then 100"
echo
elif [ $NUM -eq 100 ]
then
echo "Your $NUM is equal to 100"
echo
else
echo "Sorry your $NUM number is not greater then 100"
echo
fi


