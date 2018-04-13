// deckinfo: count deck elements
package main

import (
	"fmt"
	"github.com/ajstarks/deck"
	"os"
)

func show(name string, value int) {
	if value > 0 {
		fmt.Printf("%s\t%d\n", name, value)
	}
}

func main() {
	for _, file := range os.Args[1:] {
		d, err := deck.Read(file, 0, 0)
		if err != nil {
			fmt.Fprintf(os.Stderr, "%s: %v\n", file, err)
			continue
		}
		fmt.Printf("# Elements of %s\n", file)
		show("Slide", len(d.Slide))
		var texts, images, lists, arcs, lines, ellipses, rects, curves, polygons int
		for _, s := range d.Slide {
			texts += len(s.Text)
			images += len(s.Image)
			lists += len(s.List)
			lines += len(s.Line)
			rects += len(s.Rect)
			arcs+= len(s.Arc)
			ellipses += len(s.Ellipse)
			curves += len(s.Curve)
			polygons += len(s.Polygon)
		}
		show("Text", texts)
		show("Image", images)
		show("List", lists)
		show("Line", lines)
		show("Rect", rects)
		show("Ellipse", ellipses)
		show("Arc", arcs)
		show("Curve", curves)
		show("Polygon", polygons)
	}
}
