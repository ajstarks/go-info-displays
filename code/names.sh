#!/bin/bash

. $HOME/Library/deckfuncs.sh

colors="red,green,blue,orange,purple,lightsteelblue,gray,brown,salmon"
title="Evoultion of Baby Names in the US: 1880-2015"
opt="-max=100000 -title=f -fulldeck=f -vol -val=f -bar=f"
deck begin
	slide begin
		cp=0
		lx=10
		ly=20
		ctext "$title" 50 93 2 sans
		for i in Amanda Ashley Betty Deborah Dorothy Helen Jessica Linda Patricia 
		do
			cp=$(( $cp + 1 ))
			c=$( echo $colors | cut -d, -f$cp )
	
			if (( cp == 1 ))
			then
				xopt="-xlabel=0 -grid -yaxis"
			else
				xopt="-xlabel=20"
			fi
			dchart -color=$c $opt $xopt $i.d
			legend $i $lx $ly 1 sans $c
			lx=$(( $lx + 10 ))
		done
	slide end
	
	slide begin
		left=10
		top=88
		cp=0
		ctext "$title" 50 93 2 sans
		for i in Amanda Ashley Betty Deborah Dorothy Helen Jessica Linda Patricia
		do
			cp=$(( $cp + 1 ))
			
			if (( $cp == 1 || $cp == 4 || $cp == 7 ))
			then
				yopt="-yaxis -yrange=0,100000,25000"
			else
				yopt=""
			fi
			
			if (( $cp > 6 )) 
			then
				xopt="-xlabel=20"
			else
				xopt="-xlabel=0"
			fi

			right=$(( $left + 20 ))
			bottom=$(( top - 20 ))

			c=$( echo $colors | cut -d, -f$cp )
			ctext $i $(( $left + 10 )) $(( $top - 5 )) 1.5 sans
			rect $(( $left + 10))  $(( $top - 10 )) 20 20 $c 10
			
			dchart -left=$left -right=$right -top=$top -bottom=$bottom -color=$c $opt $yopt $xopt $i.d
			
			left=$(( left + 30 ))
			if (( $cp % 3 == 0 ))
			then
				top=$(( $top - 30 ))
				left=10
			fi
		done
	slide end
deck end