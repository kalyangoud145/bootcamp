#!/bin/bash -x
read -p "enter the number " n
for (( i=2 ;i*i <= $n ;i++ ))
do
	for (( i=2 ;i <= $n ;i++ ))
	do
		if [ $(($n%$i)) -eq 0 ]
		then
			isPrime=1
			for ((j=2 ;j<=$i/2;j++))
			do
				if [ $(($i%$j)) -eq 0 ]
				then
					isPrime=0
					continue
				fi
			done
			if [ $isPrime -eq 1 ]
			then
				echo "$i"
			fi
		fi
	done
done
