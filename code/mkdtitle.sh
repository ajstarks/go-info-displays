#!/bin/sh
(
echo '<deck><slide><text xp="50" yp="90" sp="5" align="center">dchart: charts for deck</text>'
dchart \
	-fulldeck=f \
	-textsize=1 \
	-top=75 \
	-bottom=50 \
	-left=10 \
	-right=60 \
	-color=steelblue \
	-bar=f \
	-vol \
	-chartitle="BITCOIN to USD" \
	-val=f \
	-xlabel=0 \
	-yaxis \
	-grid \
	-csv \
	-csvcol=Date,Close \
	-yrange=0,20000,4000 \
	BTC-USD.csv
dchart \
	-fulldeck=f \
	-textsize=1 \
	-left=10 \
	-right=60 \
	-top=48 \
	-bottom=40 \
	-yaxis=f  \
	-color=orange \
	-bar \
	-val=f \
	-xlabel=100 \
	-xlast \
	-title=f \
	-csv \
	-csvcol=Date,Volume \
	BTC-USD.csv

dchart -fulldeck=f -xlabel=5 -textsize=1 -left=72 -right=95 -top=75 -bottom=50 AAPL.d
dchart -fulldeck=f -left=72 -right=75 -ls 2 -pgrid  -top=40  -textsize=0.9 -ls=2.4 -val=f incar.d 
dchart -fulldeck=f -wbar -left=40 -right=60 -top=25 -bottom=20 -textsize=0.9 -ls=2.8 browser.d
./mfunc -f sine | 
dchart -fulldeck=f -left=5 -right=30 -top=25 -bottom=15 -val=f -bar=f -vol -xlabel=10 -textsize=1 -color=brown
echo '</slide></deck>'
)
