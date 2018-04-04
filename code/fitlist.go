package main

import (
	"github.com/ajstarks/deck/generate"
	"os"
)

func fit(deck *generate.Deck, top, bottom, left, textsize float64, color string, list []string, doline bool) {
	x := left
	y := top
	var spacing float64
	for {
		spacing = (top - bottom) / float64(len(list)-1)
		if spacing > textsize {
			break
		}
		textsize -= 2.0
	}
	for _, s := range list {
		deck.Text(x, y, s, "sans", textsize, color)
		if doline {
			deck.Line(x, y-spacing/3, 100-x+5, y-spacing/3, 0.1, "")
		}
		y -= spacing
	}
}

func main() {


	cmd := []string{
		"build",
		"clean",
		"env",
		"fix",
		"fmt",
		"generate",
		"get",
		"install",
		"list",
		"run",
		"test",
		"tool",
		"version",
		"vet"}

	desc := []string{
		"compile packages and dependencies",
		"remove object files",
		"print Go environment information",
		"run go tool fix on packages",
		"run gofmt on package sources",
		"generate Go files by processing source",
		"download and install packages and dependencies",
		"compile and install packages and dependencies",
		"list packages",
		"compile and run Go program",
		"test packages",
		"run specified go tool",
		"print Go version",
		"run go tool vet on packages",
	}

	deck := generate.NewSlides(os.Stdout, 1024, 768)
	deck.StartDeck()
	deck.StartSlide()
	fit(deck, 95, 5, 15, 2.5, "black", cmd, true)
	fit(deck, 95, 5, 30, 2.5, "gray", desc, false)
	deck.EndSlide()
	deck.EndDeck()

}
