package main

import (
	"github.com/ajstarks/deck/generate"
	"os"
)

func main() {
	deck := generate.NewSlides(os.Stdout, 0, 0)
	deck.StartDeck()
	// Text alignment
	deck.StartSlide("rgb(180,180,180)")
	deck.Text(50, 80, "Left", "sans", 10, "black")
	deck.TextMid(50, 50, "Center", "sans", 10, "gray")
	deck.TextEnd(50, 20, "Right", "sans", 10, "white")
	deck.Line(50, 100, 50, 0, 0.2, "black", 20)
	deck.EndSlide()
	// List
	items := []string{"First", "Second", "Third", "Fourth", "Fifth"}
	deck.StartSlide("blanchedalmond")
	deck.Text(10, 80, "Important Items", "sans", 5, "")
	deck.List(10, 60, 4, 1.4, 50, items, "bullet", "sans", "maroon")
	deck.EndSlide()
	// Picture with text annotation
	quote := "Tony Stark was able to build this in a cave. With a box of scraps!"
	deck.StartSlide("black", "white")
	deck.Image(50, 50, 1600, 681, "cave.jpg", "https://youtu.be/g1fzMbAr1u0?t=253")
	deck.Rect(70, 60, 60, 40, "black", 40)
	deck.TextBlock(45, 70, quote, "sans", 5, 45, "")
	deck.EndSlide()
	deck.EndDeck()
}
