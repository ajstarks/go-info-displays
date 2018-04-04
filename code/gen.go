package main

import (
	"github.com/ajstarks/deck/generate"
	"os"
)

func main() {
	deck := generate.NewSlides(os.Stdout, 1600, 900) // 16x9 deck to standard output
	deck.StartDeck()                                 // start the deck

	// Text alignment
	deck.StartSlide("rgb(180,180,180)")
	deck.Text(50, 80, "Left", "sans", 10, "black")
	deck.TextMid(50, 50, "Center", "sans", 10, "gray")
	deck.TextEnd(50, 20, "Right", "sans", 10, "white")
	deck.Line(50, 100, 50, 0, 0.2, "black", 20)
	deck.EndSlide()

	// List
	items := []string{"First", "Second", 
	                  "Third", "Fourth", "Fifth"}
	deck.StartSlide()
	deck.Text(10, 90, "Important Items", "sans", 5, "")
	deck.List(10, 70, 4, items, "bullet", "sans", "red")
	deck.EndSlide()

	// Picture with text annotation
	quote := "Yours is some tepid, off-brand, generic ‘cola’. " +
		     "What I’m making is “Classic Coke”"
	person := "Heisenberg"
	deck.StartSlide("black", "white")
	deck.Image(50, 50, 1440, 900, "classic-coke.png")
	deck.TextBlock(10, 80, quote, "sans", 2.5, 30, "")
	deck.Text(65, 15, person, "sans", 1.2, "")
	deck.EndSlide()

	deck.EndDeck() // end the deck
}
