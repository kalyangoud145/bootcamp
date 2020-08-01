#!/bin/bash -x
read -p " Type of conversion to be performed " t
degF=1;
degC=2;
case $t in
		$degF)
			read -p "enter temperature in centigrades " C
			DEGF=$((($C*9/5) + 32))
			echo "$DEGF"
			;;
		$degC)
			read -p "enter temperature in fareinhits " F
         DEGC=$(( ($F-32)* 5/9 ))
         echo "$DEGC"		
			;;
		*)
			echo "conversion not found "
			;;
esac
