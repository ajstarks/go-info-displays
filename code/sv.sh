#!/bin/sh
opts="-csv -val=f -fulldeck=f"
echo '<deck>'
for f in $*
do
	echo '<slide>'
	symbol=$(basename $f .csv)
	min=$(awk 'NR > 1 {print}' $f | sort -t, -k5 -n | awk -F, 'END {printf "%.2f", $5}')
	xlabel=$(awk 'END {printf "%d", NR/5}' $f)
	dchart $opts -bar=f -vol -dmin=t -csvcol=Date,Close  -xlabel=0 -chartitle="$symbol" -top=85 -bottom=60 -hline="$min,High($min)" $f
	dchart $opts                     -csvcol=Date,Volume -xlabel=$xlabel                -top=58 -bottom=45 -color=gray -title=f     $f
	echo '</slide>'
done
echo '</deck>'