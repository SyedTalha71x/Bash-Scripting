#!/bin/bash


#for VAR in java ansible maven
#do
#   echo "Looping"
#   echo "-------"
#   sleep 2
#   echo "Value of var is $VAR"
#   echo ""
#done


COUNTER=0

while [ $COUNTER -lt 5 ]
do
   echo "Entering in a while loop"
   echo "Value for Counter is $COUNTER"
   COUNTER=$(( $COUNTER + 1 ))
   sleep 1
done

echo "Out of the loop"

