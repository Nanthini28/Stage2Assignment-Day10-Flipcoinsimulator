#!/bin/bash
read -p "Enter the limit simulation:" value
Head=1
Tail=0
declare -A Toss
function check(){
HCount=$1
TCount=$2
if (($HCount -le $TCount))
then
        echo "Tail won:" $((TCount-HCount))
elif (($TCount -le $HCount))
then
        echo "Head won:" $((HCount-TCount))
else
        echo "TIE"
fi
}

function Winner(){
count=0
HCount=0
TCount=0

while(($HCount<22 && $TCount<22 &&$count<$value))
do
 	result=$((RANDOM%2))
	if [[ $result -eq $Head ]]
	then
		Toss[H]=$((HCount++))
	else
		Toss[T]=$((TCount++))
	fi
	((count++))
done
check $HCount $TCount
}

function Tie(){
while (($HCount-$TCount<2 && $TCount-$HCount<2))
do
        result=$((RANDOM%2))
        if [[ $result -eq $Head ]]
        then
                Toss[H]=$((HCount++))
        else
                Toss[T]=$((TCount++))
        fi
        ((count++))
done
