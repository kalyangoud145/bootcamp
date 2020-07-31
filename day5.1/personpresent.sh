#!/bin/bash -x
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
	echo "person is present"
else
	echo "person is absent"
fi

