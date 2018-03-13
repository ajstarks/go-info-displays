func stockslide(deck *generate.Deck, symbols []string) {
	x := left
	y := top
	
	rintr := (top-bottom)/float64(len(symbols))
	size := rintr/2.5
	cintr := size*4
	
	var color string
	for _, s := range symbols {
		stock, err := stockapi(s)
		if err != nil || stock.Symbol == "" {
			continue
		}
		if stock.Change < 0 {
			color = negcolor
		} else {
			color = poscolor
		}
		deck.Text(x, y, stock.Symbol, "sans", size, "")
		x += cintr * 2
		deck.TextEnd(x, y, fmt.Sprintf("%.2f", stock.Price), "sans", size, "")
		x += cintr
		deck.TextEnd(x, y, fmt.Sprintf("%.2f", stock.Change), "sans", size, color)
		x += cintr
		deck.TextEnd(x, y, fmt.Sprintf("(%.2f%%)", stock.PctChange), "sans", size, color)
		x = left
		y -= rintr
	}
	deck.Text(footx, footy, time.Now().Format("2006-01-02 15:04:05"), "sans", 1.5, "yellow")
}
