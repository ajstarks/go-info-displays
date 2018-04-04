package main

// Imports
import (
	"flag"
	"fmt"
	"github.com/ajstarks/svgo"
	"io"
	"os"
	"xml"
)

// <thing top="100" left="100" sep="50">
// 	<item width="75" height="100" name="Little" color="blue">This is small</item>
// 	<item width="150" height="200" name="Big" color="green">This is large</item>
// </thing>

type Thing struct {
	Top  int `xml:"attr"`
	Left int `xml:"attr"`
	Sep  int `xml:"attr"`
	Item []item
}

type item struct {
	Width  int    `xml:"attr"`
	Height int    `xml:"attr"`
	Name   string `xml:"attr"`
	Color  string `xml:"attr"`
	Text   string `xml:"chardata"`
}

var (
	width  = flag.Int("w", 1024, "width")
	height = flag.Int("h", 768, "height")
	canvas = svg.New(os.Stdout)
)

// Open the file
func dothing(location string) {
	f, err := os.Open(location)
	defer f.Close()
	if err == nil {
		readthing(f)
	} else {
		fmt.Fprintf(os.Stderr, "%v\n", err)
	}
}

// Read the file, loading the defined structure
func readthing(r io.Reader) {
	var t Thing
	if err := xml.Unmarshal(r, &t); err == nil {
		drawthing(t)
	} else {
		fmt.Fprintf(os.Stderr, "Unable to parse components (%v)\n", err)
	}
}

// use the items of "thing" to make the picture
func drawthing(t Thing) {
	x := t.Left
	y := t.Top
	for _, v := range t.Item {
		style := fmt.Sprintf("font-size:%dpx;fill:%s", v.Width/2, v.Color)
		canvas.Circle(x, y, v.Height/4, "fill:"+v.Color)
		canvas.Text(x+t.Sep, y, v.Name+":"+v.Text+"/"+v.Color, style)
		y += v.Height
	}
}

func main() {
	flag.Parse()
	for _, f := range flag.Args() {
		canvas.Start(*width, *height)
		dothing(f)
		canvas.End()
	}
}
