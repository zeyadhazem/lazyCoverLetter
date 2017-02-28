#!/bin/sh

WDAY=$(date +"%A")
MONTH=$(date +"%B")
DAY=$(date +"%-d")
YEAR=$(date +"%Y")

read -p "Enter Company Name: " COMPANY

sed -e 's/<wday>/'"$WDAY"'/g' -e 's/<month>/'"$MONTH"'/g' -e 's/<day>/'"$DAY"'/g' -e 's/<year>/'"$YEAR"'/g' -e 's/<Company>/'"$COMPANY"'/g' <mycl.tex >modified.tex

pdflatex -jobname mycl modified

open mycl.pdf