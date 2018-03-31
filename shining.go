// The carpet pattern from "The Shining"
package main

import (
	"fmt"
	"os"

	"github.com/ajstarks/svgo"
)

func main() {
	xp := []int{50, 70, 70, 50, 30, 30} // x coords of the hexagon
	yp := []int{40, 50, 75, 85, 75, 50} // y coords of the hexagon
	xl := []int{0, 0, 50, 100, 100}     // x coords of the "house"
	yl := []int{100, 40, 10, 40, 100}   // y coords of the "house"

	stwidth := 12
	bgcolor := "rgb(227,78,25)" // background color
	bkcolor := "rgb(153,29,40)" // color of the hexagon
	stcolor := "rgb(65,52,44)"  // color of the stripes
	stylefmt := "stroke:%s;stroke-width:%d;fill:%s"

	width, height := 800, 800
	canvas := svg.New(os.Stdout)
	canvas.Start(width, height)

	// Define the units of the pattern
	canvas.Def()
	canvas.Gid("unit") // a polygon, within a "house" shape
	canvas.Polyline(xl, yl, "fill:none")
	canvas.Polygon(xp, yp)
	canvas.Gend()

	canvas.Gid("runit") // rotate and translate the unit shape
	canvas.TranslateRotate(150, 180, 180)
	canvas.Use(0, 0, "#unit")
	canvas.Gend()
	canvas.Gend()
	canvas.DefEnd()

	// Loops to define the pattern
	canvas.Rect(0, 0, width, height, "fill:"+bgcolor)
	canvas.Gstyle(fmt.Sprintf(stylefmt, stcolor, stwidth, bkcolor))
	for y := 0; y < height; y += 130 { // vertical
		for x := -50; x < width; x += 100 { // horizontal
			canvas.Use(x, y, "#unit")
			canvas.Use(x, y, "#runit")
		}
	}
	canvas.Gend()
	canvas.End()
}
