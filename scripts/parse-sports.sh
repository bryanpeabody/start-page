#!/bin/bash

echo "<h2>Today's Games</h2>" > sports.html

#now=`date +%m/%d`
now="07/02"

baseballicon="<i class='fa-solid fa-baseball'></i> &nbsp;&nbsp;"

game=`grep $now dodgers-2024.csv | awk -F "," '{ print $4 " " $3}'`
echo $baseballicon $game >> sports.html

echo "<br />" >> sports.html

game=`grep $now cubs-2024.csv | awk -F "," '{ print $4 " " $3}'`
echo $baseballicon $game >> sports.html

echo "<br />" >> sports.html

case "$(date +%a)" in
  Mon)
    echo "<i class='fa-solid fa-medal'></i> &nbsp;&nbsp; WWE Raw 08:00pm" >> sports.html
    ;;
  Fri)
    echo "<i class='fa-solid fa-medal'></i> &nbsp;&nbsp; WWE Smackdown 08:00pm" >> sports.html
    ;;
esac
