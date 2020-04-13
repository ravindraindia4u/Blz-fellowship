#!/bin/bash
echo "		~:Gambler Simulator:~";
echo "Cash = Rs.100 and Goal = Rs.200 ";
wins=0;
loss=0;
bets=0;
stack=100;
goal=200;
for (( i=1; i<=100; i++ ))
do
	cash=$stack;
	while [[ $cash -gt  0 && $cash -lt $goal ]]
	do
		(( bets++ ));
		randomCheck=$(( RANDOM%2 ));
		if [ $randomCheck -eq 0 ]
		then
			(( cash++ ));
		else
			(( cash-- ));
		fi
	done
	if [ $cash -eq $goal ]
	then
		(( wins++ ));
	else
		(( loss++ ));
	fi
done
echo "Number of Wins = $wins";
echo "Number of Loss = $loss";
echo "Number of bets made = $bets";

