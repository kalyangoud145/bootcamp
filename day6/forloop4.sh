#!/bin/bash -x
read -p "Enter the lower range " l
read -p "Enter the upper range " u
for (( n=$l ; n < $(($u+1)) ; n++ ))
do
	if [ $n -gt 1 ]
	then
		for (( i=2; i < $n ; i++ ))
		do
			if [ $(($n%$i)) -eq 0 ]
			then
				continue
			else
				echo "$n"
			fi
		done
	fi
done
