// List
items := []string{"First", "Second", "Third", "Fourth", "Fifth"}
deck.StartSlide("blanchedalmond", "black")
deck.Text(10, 80, "Important Items", "sans", 5, "")
deck.List(10, 60, 4, 1.4, 50, items, "bullet", "sans", "red")
deck.EndSlide()