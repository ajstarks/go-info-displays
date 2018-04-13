#!/bin/sh
. $HOME/Library/deckfuncs.sh

deck begin
	canvas 1200 900
	slide begin white black
		ctext "Deck elements" 50 90 5
		cimage follow.jpg "Dreams" 70 60 640 480 

		blist 10 70 3
			li text, list, image
			li line, rect, ellipse
			li arc, curve, polygon
		elist

		line    20 10 30 10
		rect    35 10 4 3        "rgb(127,0,0)"
		ellipse 45 10 4 3        "rgb(0,127,0)"
		arc     55 10 4 3 0 180  "rgb(0,0,127)"
		curve   60 10 75 20 70 10
		polygon "75 75 80" "8 12 10" "rgb(0,0,127)"
	slide end
deck end