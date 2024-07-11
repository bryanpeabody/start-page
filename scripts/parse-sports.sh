#!/bin/bash

now=`date +%m/%d`
enow=`date +%d/%m`
outfile="../sports.html"

baseballicon="<i class='fa-solid fa-baseball'></i> &nbsp;&nbsp;"
soccericon="<i class='fa-solid fa-futbol'></i> &nbsp;&nbsp;"
hockeyicon="<i class='fa-solid fa-hockey-puck'></i> &nbsp;&nbsp;"
baseketballicon="<i class='fa-solid fa-basketball'></i> &nbsp;&nbsp;"

# Dodgers
game=`grep $now dodgers-2024.csv | awk -F "," '{ print $4 " - " $3}'`
 if [ ! -z "$game" ]; then
  echo $baseballicon $game > $outfile
  echo "<br />" >> $outfile
fi

# Cubs
game=`grep $now cubs-2024.csv | awk -F "," '{ print $4 " - " $3}'`
if [ ! -z "$game" ]; then
  echo $baseballicon $game >> $outfile
  echo "<br />" >> $outfile
fi

# FC Barcelona
game=`grep $now fc-barcelona-2024.csv | awk -F "," '{print $6 " at " $5}'`
time=`grep $now fc-barcelona-2024.csv | awk -F "," '{print $3}' | awk -F " " '{print " - " $2}'`

if [ ! -z "$game" ]; then
  echo $soccericon $game $time >> $outfile
  echo "<br />" >> $outfile
fi

# FC Bayern Munich

# Champions League

# Florida Panthers

# WWE
case "$(date +%a)" in
  Mon)
    echo "<i class='fa-solid fa-medal'></i> &nbsp;&nbsp; WWE Raw 08:00 PM" >> $outfile
    ;;
  Fri)
    echo "<i class='fa-solid fa-medal'></i> &nbsp;&nbsp; WWE Smackdown 08:00 PM" >> $outfile
    ;;
esac
