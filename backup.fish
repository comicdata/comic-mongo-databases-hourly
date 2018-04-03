#!/usr/bin/env fish

mongoexport -d comic -c comic-base -o comicbase.json
mongoexport -d comic -c comic-chapter -o comicchapter.json
mongodump -d comic

git pull origin master
git add .
git commit -m '['(date '+%Y-%m-%d %H:%M:%S'`)']auto backup'
git push origin master

