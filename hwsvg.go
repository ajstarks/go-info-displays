package main

import (
	"github.com/ajstarks/svgo"
	"os"
)

func main() {
	canvas := svg.New(os.Stdout)
	width := 900
	height := 560
	style := "font-size:72pt;fill:white;text-anchor:middle"

	canvas.Start(width, height)
	canvas.Rect(0, 0, width, height)
	canvas.Circle(width/2, height, width/2, "fill:rgb(77, 117, 232)")
	canvas.Text(width/2, height*3/4, "hello, world", style)
	canvas.End()
}
