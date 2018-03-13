// Picture with text annotation
quote := "Yours is some tepid, off-brand, generic ‘cola’. " + 
         "What I’m making is “Classic Coke”"
person := "Heisenberg"
deck.StartSlide("black", "white")
deck.Image(50, 50, 1440, 900, "classic-coke.png")
deck.TextBlock(10, 80, quote, "sans", 2.5, 30, "")
deck.Text(65, 15, person, "sans", 1.2, "")
deck.EndSlide()
