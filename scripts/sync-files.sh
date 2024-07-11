#!/bin/bash

cp ../index.html /var/www/html
cp ../sports.html /var/www/html
cp -r ../images /var/www/html
cp -r ../styles /var/www/html

cd ../../py-peanuts-comics-scraper/images
cp *.gif /var/www/html/images
