#!/bin/bash

# Web files
cp ../index.html /var/www/html
cp ../sports.html /var/www/html
cp -r ../images /var/www/html
cp -r ../styles /var/www/html

# Comic strips
cp ../../py-peanuts-comics-scraper/images/*.gif /var/www/html/images
