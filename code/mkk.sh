#!/bin/sh
. $HOME/Library/deckfuncs.sh

p1="The number and share of Americans living in multi- generational 
family households have continued to rise, despite improvements in the U.S. economy 
since the Great Recession. In 2016, a record 64 million people, or 20% of the U.S.
population, lived with multiple generations under one roof, 
according to a new Pew Research Center analysis of census data."

topts="-fulldeck=f -line -bar=f -scatter -dot -min=0 -max=30 -textsize=1"
popts="-fulldeck=f -bar=f -textsize=1.2"

tx=55
tb=14
ts=5
tg=2
ti=$((tg+$ts))
tt=$((tb+25))

deck begin
	slide begin
		ctext "A record 64 million Americans live in multigenerational households" 50 90 3
		textblock "$p1" 5 80 1.8 serif 40
		dchart $popts -vol       -top=75 -bottom=55 -left=55 -right=95  kids2
		dchart $popts -line -dot -top=35 -bottom=15 -left=10 -right=45  kids
		for k in t a b h o w
		do
			dchart -left=$tx -right=$((tx+$ts)) -bottom=$tb -top=$tt $topts ${k}kids
			tx=$((tx+$ti))
		done
	slide end
deck end
