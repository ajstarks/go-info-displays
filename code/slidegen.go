func main() {
	deck := generate.NewSlides(os.Stdout, 1600, 900) // 16x9 deck to stdout
	deck.StartDeck()                                 // start the deck

	deck.StartSlide("rgb(180,180,180)")
	// ... 
	deck.EndSlide()
	
	deck.StartSlide("blanchedalmond")
	// ...
	deck.EndSlide()
	
	deck.StartSlide("black", "white")
	// ...
	deck.EndSlide()

	deck.EndDeck()                                   // end the deck
}
