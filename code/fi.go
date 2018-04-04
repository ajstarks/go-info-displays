package main

import (
	"os"
	"time"
	"github.com/ajstarks/deck/generate"
)
	
type FlightInfo struct {
	source string
	destination string
	distance float64
	destdist float64
	destime time.Time
	estarrival time.Time
	localtime time.Time
	speed float64
	headwind float64
	temperature float64
	altitude float64
}

const (
	ftop = 90.0
	tofrom = 80.0
	miles2km = 1.60934
	feet2meter = 0.3047992424196
	bgcolor = "blue"
	fgcolor = "white"
	linecolor = "lightblue"
	arcstroke = 1.2
	arcw = 12
	arch = 12
)

var conversion = map[string]string{
	"miles":"km",
	"mph":"kph",
	"ft":"m",
	"F":"C",
}

// vmap maps one interval to another
func vmap(value float64, low1 float64, high1 float64, low2 float64, high2 float64) float64 {
	return low2 + (high2-low2)*(value-low1)/(high1-low1)
}


func arcmeasure(deck *generate.Deck, x, y, measure, float64, title, units string) {
	as := vmap(measure, 0, 
	deck.Arc(x, y, arcw, arch, -50, 230, arcstroke, fgcolor)
	deck.Arc(x, y, arcw, arch, -50, 230, arcstroke, linecolor)
}

func process(deck *generate.Deck, r io.Reader) {
}

func main() {
	deck := generate.NewSlides(os.Stdout,0,0)
	process(deck, os.Stdin)
}