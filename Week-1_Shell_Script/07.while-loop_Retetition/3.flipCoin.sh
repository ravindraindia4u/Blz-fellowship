#!/bin/bash
heads=0;
tails=0;
NO_OF_FLIP=0;
while [ $heads -lt 11 -a $tails -lt 11 ]
do
	randomCheck=$(( RANDOM%2 ));
	(( NO_OF_FLIP++ ));
	if [ $randomCheck -eq 0 ]
	then
		(( heads++ ));
	else
		(( tails++ ));
	fi
done
echo "Number of total coin fliped : $NO_OF_FLIP";
echo "Number of Heads : $heads";
echo "Number of Tails : $tails";
