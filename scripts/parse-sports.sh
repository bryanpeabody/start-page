#!/bin/bash

now=`date +%m/%d`
outfile="../sports.html"

baseballicon="<i class='fa-solid fa-baseball'></i> &nbsp;&nbsp;"

game=`grep $now dodgers-2024.csv | awk -F "," '{ print $4 " " $3}'`
echo $baseballicon $game > $outfile

echo "<br />" >> $outfile

game=`grep $now cubs-2024.csv | awk -F "," '{ print $4 " " $3}'`
echo $baseballicon $game >> $outfile

echo "<br />" >> $outfile

case "$(date +%a)" in
  Mon)
    echo "<i class='fa-solid fa-medal'></i> &nbsp;&nbsp; WWE Raw 08:00 PM" >> $outfile
    ;;
  Fri)
    echo "<i class='fa-solid fa-medal'></i> &nbsp;&nbsp; WWE Smackdown 08:00 PM" >> $outfile
    ;;
esac

./sync-files.sh