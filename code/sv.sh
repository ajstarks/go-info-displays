#!/bin/sh
opts="-csv -val=f -fulldeck=f -bottom=55"
echo '<deck>'
for f in $*
do
	echo '<slide>'
	symbol=$(basename $f .csv)
	min=$(awk 'NR > 1 {print}' $f | sort -t, -k5 | head -1 | cut -d , -f 5)
	xlabel=$(awk 'END {printf "%d", NR/5}' $f)
	dchart $opts -csvcol=Date,Close  -xlabel=0 -chartitle="$symbol Close/Volume" -bar=f -vol -hline=$min,Low:$min -yaxis $f
	dchart $opts -csvcol=Date,Volume -xlabel=$xlabel -top=65  -bar -vol=f -color=gray -title=f $f
	echo '</slide>'
done
echo '</deck>'