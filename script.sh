#!/bin/sh

WDAY=$(date +"%A")
MONTH=$(date +"%B")
DAY=$(date +"%-d")
YEAR=$(date +"%Y")

read -p "Enter Company Name: " COMPANY
read -p "Enter position title: " POSITION

sed -e 's/<wday>/'"$WDAY"'/g' -e 's/<month>/'"$MONTH"'/g' -e 's/<day>/'"$DAY"'/g' -e 's/<year>/'"$YEAR"'/g' -e 's/<Company>/'"$COMPANY"'/g' -e 's/<position>/'"$POSITION"'/g' <mycl.tex >modified.tex

pdflatex -jobname mycl modified

rm -rf *.log *.out *.aux modified.tex

open mycl.pdf