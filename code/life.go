package main

import (
	"github.com/ajstarks/deck/generate"
	"math"
	"math/rand"
	"os"
	"strings"
	"time"
)

type pf struct {
	function   func(float64) float64
	xmin, xmax float64
	ymin, ymax float64
	xint       float64
}

type plot struct {
	name  string
	color string
	data  pf
}

const (
	largest  = math.MaxFloat64
	smallest = -math.MaxFloat64
)

// grid draws a horizontal and veritical grid
func grid(deck *generate.Deck, left, right, top, bottom, xinterval, yinterval, size float64, color string) {
	for yp := top; yp >= bottom; yp -= xinterval {
		deck.Line(left, yp, right, yp, size, color, 30)
	}
	for xp := left; xp <= right; xp += yinterval {
		deck.Line(xp, top, xp, bottom, size, color, 30)
	}
}

// labels makes a multi-line label
func label(deck *generate.Deck, x, y float64, s, font string, size, ls float64, color string) {
	lines := strings.Split(s, "\n")
	for _, t := range lines {
		deck.Text(x, y, t, font, size, color)
		y -= ls
	}
}

// extrema returns the min and max from a slice of data
func extrema(data []float64) (float64, float64) {
	min := largest
	max := smallest

	for _, d := range data {
		if d > max {
			max = d
		}
		if d < min {
			min = d
		}
	}
	return min, max
}

// vmap maps one range into another
func vmap(value float64, low1 float64, high1 float64, low2 float64, high2 float64) float64 {
	return low2 + (high2-low2)*(value-low1)/(high1-low1)
}

// plotdata plots coordinates stored in x, y,
// mapped to a region defined by left, right, top, bottom
func plotdata(deck *generate.Deck, left, right, top, bottom float64, x []float64, y []float64, size float64, color string) {
	if len(x) != len(y) {
		return
	}
	minx, maxx := extrema(x)
	miny, maxy := extrema(y)

	ix := left
	iy := bottom
	for i := 0; i < len(x); i++ {
		xp := vmap(x[i], minx, maxx, left, right)
		yp := vmap(y[i], miny, maxy, bottom, top)
		deck.Circle(xp, yp, size, color)
		deck.Line(ix, iy, xp, yp, 0.2, color)
		ix = xp
		iy = yp
	}
}

// plotfunc plots data generated from a function defined as y=f(x),
// mapped to a region defined by left, right, top, bottom
func plotfunc(deck *generate.Deck, left, right, top, bottom float64, data pf, size float64, color string) {
	ix := left
	iy := bottom
	for xd := data.xmin; xd <= data.xmax; xd += data.xint {
		xp := vmap(xd, data.xmin, data.xmax, left, right)
		yp := vmap(data.function(xd), data.ymin, data.ymax, bottom, top)
		deck.Line(ix, iy, xp, yp, 0.2, color)
		ix = xp
		iy = yp
	}
}

func randy(x float64) float64 {
	return rand.Float64() * math.Cos(x)
}

func flatline(x float64) float64 {
	return 0
}

func blinkalert(deck *generate.Deck, message, color string) {
	var op float64
	for i := 1; i <= 3; i++ {
		if i == 2 {
			op = 20
		} else {
			op = 100
		}
		deck.StartSlide("black", "white")
		deck.Rect(50, 60, 60, 25, "orangered")
		deck.TextMid(50, 63, message, "sans", 5, color, op)
		deck.EndSlide()
	}
}

func alert(deck *generate.Deck, message, color string) {
	deck.StartSlide("black", "white")
	deck.Rect(50, 60, 60, 25, "orangered")
	deck.TextMid(50, 63, message, "sans", 5, color)
	deck.EndSlide()
}

func showfunctions(deck *generate.Deck, top, left, fw, fh float64, fdata []plot) {
	gutter := 2.0
	ts := fh / 5
	w2 := fw / 2
	h2 := fh / 2
	x := left
	y := top
	deck.StartSlide("black", "white")
	for _, p := range fdata {
		deck.Rect(x, y, fw, fh, p.color)
		label(deck, (x-w2)+ts, y+(ts/2.5), p.name, "sans", ts, ts*1.8, "white")
		grid(deck, x+w2, 80, y+h2, y-h2, 2, 5, 0.1, p.color)
		plotfunc(deck, x+w2, 80, y+h2, y-h2, p.data, 0.2, p.color)
		y -= fh + gutter
	}
	deck.EndSlide()
}

func main() {

	random := pf{function: randy, xmin: 0, xmax: 50, ymin: -1.5, ymax: 1.5, xint: 0.25}
	fdata := []plot{
		{"CARDIO\nVASCULAR", "rgb(39,147,172)", random},
		{"METABOLIC\nLEVELS", "rgb(31,119,91)", random},
		{"CENTRAL\nNERV. SYSTEM", "rgb(54,164,142)", random},
		{"PULMONARY\nFUNCTION", "rgb(105,133,174)", random},
		{"SYSTEMS\nINTEGRATION", "rgb(82,165,205)", random},
		{"LOCOMOTOR\nSYSTEM", "rgb(92,88,28)", random},
	}

	top, left := 80.0, 25.0
	fw, fh := 15.0, 6.0
	killorder := []int{1, 4, 0, 3, 5, 2}
	rand.Seed(int64(time.Now().Unix()))
	deck := generate.NewSlides(os.Stdout, 0, 0)
	deck.StartDeck()
	showfunctions(deck, top, left, fw, fh, fdata)
	alert(deck, "COMPUTER\nMALFUNCTION", "white")
	for i := 0; i < len(fdata); i++ {
		fdata[killorder[i]].color = "orangered"
		fdata[killorder[i]].data.function = flatline
		showfunctions(deck, top, left, fw, fh, fdata)
		if i == 2 {
			alert(deck, "COMPUTER\nMALFUNCTION", "white")
		}
		if i == 3 {
			blinkalert(deck, "LIFE FUNCTIONS\nCRITICAL", "white")
		}
	}
	blinkalert(deck, "LIFE FUNCTIONS\nTERMINATED", "white")
	deck.EndDeck()
}
