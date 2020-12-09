#!/bin/bash -x

echo "welcome to Flip Coin Simulation"

HEADS=1
TAILS=2

read -p "give  number of times filp coin Simulation should run:" number
headcount=0
tailcount=0
counter=0
while [ $counter -lt $number ]
do
	simulationResult=$((RANDOM%2))

	if [ $simulationResult -eq $HEADS ]
	then
		((headcount++))
	else
		((tailcount++))
	fi
	((counter++))
done

echo "$headcount times head won"
echo "$tailcount times tail won"
