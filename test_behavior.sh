#!/usr/bin/env bash
#tests behavior locally on magpis, takes bird id and then behavior name as in py-behaviors init as args

THISBOX=$(hostname)
if [ -z $1 ]; then
	echo -n "Enter Bird ID (B####):"
	read BIRDID
else
	BIRDID=$1
fi

if [ -z $2 ]; then
	echo -n "Enter behavior name as it is in the init file:"
	read BEHAVIORNAME
else
	BEHAVIORNAME=$2
fi

echo $THISBOX $BIRDID $BEHAVIORNAME
python ~/pyoperant/scripts/behave -P $THISBOX -S $BIRDID $BEHAVIORNAME
