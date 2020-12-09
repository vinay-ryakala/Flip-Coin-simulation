#!/bin/bash -x

echo "welcome to Flip Coin Simulation"

HEADS=1
TAILS=2

headcount=0
tailcount=0
counter=0

while [ $counter != 21 ]
do
	simulationResult=$((RANDOM%2))

	if [ $simulationResult -eq $HEADS ]
	then
		((headcount++))
	else
		((tailcount++))
	fi
	if [ $headcount -gt $tailcount ]
	then
		counter=$headcount
	else
		counter=$tailcount
	fi
done

if [ $headcount -gt $tailcount ]
then   
	diff=$(($headcount-$tailcount))
	echo "heads won by $diff"
elif [ $headcount -lt $tailcount ]
then
	diff=$(($tailcount-$headcount))
	echo "tails won by $diff"
else
	echo "Its a tie"
fi

