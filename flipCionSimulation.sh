#!/bin/bash -x

echo "welcome to Flip Coin Simulation"

HEADS=1
TAILS=2

simulationResult=$((RANDOM%2))

if [ $simulationResult -eq $HEADS ]
then
		echo "Heads is winner"
else
		echo "Tails is winner"
fi
