#!/bin/bash -x
read -p "Enter the value of n " n

for (( i=1 ; i<=$n ;i++ ))
do
	power=$((2**i))
	echo " power of 2^$i is : $power"
done
