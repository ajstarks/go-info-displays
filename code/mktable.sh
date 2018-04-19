#!/bin/sh
r1tb="-top=90 -bottom=70"
r2tb="-top=55 -bottom=45"
r3tb="-top=25 -bottom=10"

colt1="-left=10 -right=30"
colt2="-left=40 -right=60"
colt3="-left=70 -right=90"

colm1="-left=4  -right=20"
colm2="-left=28 -right=44"
colm3="-left=52 -right=68"
colm4="-left=76 -right=92"

r2opt="-xlabel=0 -bar=f -title=f"

(
#echo '<deck><slide>'
dchart -fulldeck=f -textsize=0.75 -bar  -xlabel=0 $r1tb $colt1  AAPL.d
dchart -fulldeck=f -textsize=0.75 -hbar $r1tb $colt2  AAPL.d
dchart -fulldeck=f -textsize=0.75 -wbar $r1tb $colt3  go-platform.d # browser.d

dchart -fulldeck=f -textsize=0.75  $r2opt -dot 		$r2tb $colm1	AAPL.d
dchart -fulldeck=f -textsize=0.75  $r2opt -vol 		$r2tb $colm2	AAPL.d
dchart -fulldeck=f -textsize=0.75  $r2opt -scatter 	$r2tb $colm3 	AAPL.d
dchart -fulldeck=f -textsize=0.75  $r2opt -line 	$r2tb $colm4	AAPL.d

dchart -fulldeck=f -textsize=0.75 -donut -psize=9 -pwidth=1 -val=f  -top=24 -bottom=10 $colt1 go-platform.d
dchart -fulldeck=f -textsize=0.75 -pmap  -pwidth=3 -val=f -top=27 -left=30 -right=70 go-platform.d
dchart -fulldeck=f -textsize=0.75 -ls=1.5 -pgrid -top=30 -left=75 -right=90 -val=f go-platform.d # incar.d
#echo '</slide></deck>'
)
 