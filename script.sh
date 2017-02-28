#!/bin/sh

WDAY=$(date +"%A")
MONTH=$(date +"%B")
DAY=$(date +"%-d")
YEAR=$(date +"%Y")

read -p "Enter Company Name: "  COMPANY

wday_q=s/_wday/
wday_q=$wday_q$WDAY
wday_q=$wday_q/g

month_q=s/_month/
month_q=$month_q$MONTH
month_q=$month_q/g

day_q=s/_day/
day_q=$day_q$DAY
day_q=$day_q/g

year_q=s/_year/
year_q=$year_q$YEAR
year_q=$year_q/g

sed -e $wday_q -e $month_q -e $day_q -e $year_q -e 's/<Company>/'"$COMPANY"'/g' <mycl.tex >modified.tex

pdflatex -jobname mycl modified

open mycl.pdf