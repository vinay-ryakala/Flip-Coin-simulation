#!/bin/bash -x

echo "welcome to Flip Coin Simulation"

HEADS=1
TAILS=2

headcount=0
tailcount=0
counter=0
numberOfTimes=22

while [ $counter -le $numberOfTimes ]
do
	simulationResult=$((RANDOM%2))

	if [ $simulationResult -eq $HEADS ]
	then
		((headcount++))
	else
		((tailcount++))
	fi
	diff=$headcount-$tailcount
	if [[ $diff -eq 0 && $counter -eq $numberOfTimes ]]
	then
		counter=$diff
	fi
	
	((counter++))
done

if [ $headcount -gt $tailcount ]
then   
	diff=$(($headcount-$tailcount))
	echo "heads won by $diff"
else
	diff=$(($tailcount-$headcount))
	echo "tails won by $diff"
fi
