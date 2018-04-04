package main

import (
	"flag"
	"os"
	"github.com/ajstarks/deck/generate"
)

func main() {

	x1 := flag.Float64("x1", 50, "x1")
	x2 := flag.Float64("x2", 50, "x2")
	y1 := flag.Float64("y1", 50, "y1")
	y2 := flag.Float64("y2", 20, "y2")
	step := flag.Float64("step", 10, "x1")
	color := flag.String("color", "white", "line color")
	ss := flag.Float64("ss", 1.0, "step size")
	flag.Parse()
	
	deck := generate.NewSlides(os.Stdout, 0, 0)
	
	deck.Line(*x1, *y1, *x2, *y2, 0.1, *color)
	for y := *y1; y >= *y2; y -= *step {
		deck.Line(*x1, y, *x1 + *ss, y, 0.1, *color)
	}
}