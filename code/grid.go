package main

import (
	"fmt"
	"github.com/ajstarks/deck/generate"
	"os"
)

func main() {

	deck := generate.NewSlides(os.Stdout, 1024, 768)
	deck.StartDeck()
	deck.StartSlide()
	w := 100.0
	h := 100.0
	pw := 10.0
	ph := 10.0
	percent := 10.0
	fs := 3.0
	for x, pl := 0.0, 0.0; x <= w; x += pw {
		deck.Line(x, 0, x, h, 0.1, "steelblue", 50)
		if pl > 0 && pl < 100 {
			deck.TextMid(x, h-percent/2, fmt.Sprintf("%.0f", pl), "sans", fs, "gray")
		}
		pl += percent
	}
	for y, pl := 0.0, 0.0; y <= h; y += ph {
		deck.Line(0, y, w, y, 0.1, "steelblue", 50)
		if pl > 0 && pl < 100 {
			deck.TextMid(percent/2, y-(fs/2), fmt.Sprintf("%.0f", pl), "sans", fs, "gray")
		}
		pl += percent
	}
	deck.EndSlide()

	deck.EndDeck()
}
