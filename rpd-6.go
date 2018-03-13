func drawthing(t Thing) {
	x := t.Left
	y := t.Top
	thingfmt := "font-size:%dpx;fill:%s"
	tfmt := "%s:%s/%s"
	for _, v := range t.Item {
		s := fmt.Sprintf(thingfmt, 
					v.Width/2, v.Color)
		canvas.Circle(x, y, v.Height/4, 
					"fill:"+v.Color)
		canvas.Text(x+t.Sep, y,
		fmt.Sprintf(tfmt, 
					v.Name, v.Text, v.Color, s) 
		y += v.Height
	}
}
