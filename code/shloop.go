for y := 0; < height; y += 130 {
	for x := 100; x < width; x+=100 {
		canvas.Use(x, y, "#unit")
		canvas.Use(x, y, "#runit")
	}
}
