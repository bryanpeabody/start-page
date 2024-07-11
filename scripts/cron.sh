#!/bin/bash

cd /home/bryan/projects/py-peanuts-comics-scraper
/usr/bin/python3 ./daily-strips-download.py

cd /home/bryan/projects/start-page/scripts
./parse-sports.sh

./sync-files.sh
