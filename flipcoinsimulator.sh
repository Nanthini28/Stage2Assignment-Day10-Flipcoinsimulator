#!/bin/bash
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
