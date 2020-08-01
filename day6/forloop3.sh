#!/bin/bash -x
read -p "Enter the number " n
flag=0
for (( i=2;i <= $n/2 ;i++))
do
	if [ $(($n%i)) -eq 0 ]
	then
		flag=1
		echo " $n is not a prime number "
		exit
	fi
done
if [ $n -eq 1 ]
then
	echo "1 is neither prime nor composite"
else
	if [ $flag -eq 0 ]
	then
		echo " $n is a prime number "
	else
		echo "$n is not a prime number "
	fi
fi
