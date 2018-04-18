// deckinfo: count deck elements
package main

import (
	"flag"
	"fmt"
	"os"
	"strings"

	"github.com/ajstarks/deck"
)

func show(name string, value int) {
	if value > 0 {
		fmt.Printf("%s\t%d\n", name, value)
	}
}

var xmlmap = strings.NewReplacer(
	"&", "&amp;",
	"<", "&lt;",
	">", "&gt;")

func xmlesc(s string) string {
	return xmlmap.Replace(s)
}

var ltype = map[string]string{"": "", "bullet": "b", "number": "n"}

func showitems(s deck.Slide, n int) {
	fmt.Printf("\n## slide %d\nslide begin %q %q\n", n+1, s.Bg, s.Fg)

	for _, i := range s.Text {
		fmt.Printf("\ttext\t%q %.2f %.2f\n", xmlesc(i.Tdata), i.Xp, i.Yp)
	}

	for _, i := range s.Image {
		fmt.Printf("\timage\t%v %.2f %.2f %d %d\n", i.Name, i.Xp, i.Yp, i.Width, i.Height)
	}
	for _, i := range s.List {
		fmt.Printf("\t%slist\t%.2f %.2f %.2f\n", ltype[i.Type], i.Xp, i.Yp, i.Sp)
		for _, li := range i.Li {
			fmt.Printf("\t\tli %q\n", xmlesc(li.ListText))
		}
		fmt.Println("\telist")
	}
	for _, i := range s.Line {
		fmt.Printf("\tline\t%.2f %.2f %.2f %.2f\n", i.Xp1, i.Yp1, i.Xp2, i.Yp2)
	}
	fmt.Println("slide end")
}


func main() {
	var showit = flag.Bool("v", false, "verbose")
	flag.Parse()
	for _, file := range flag.Args() {
		d, err := deck.Read(file, 0, 0)
		if err != nil {
			fmt.Fprintf(os.Stderr, "%s: %v\n", file, err)
			continue
		}
		fmt.Printf("# Elements of %s\n", file)
		var texts, images, lists, arcs, lines, ellipses, rects, curves, polygons int
		show("slide", len(d.Slide))
		for ns, s := range d.Slide {
			if *showit {
				showitems(s, ns)
			}
			texts += len(s.Text)
			images += len(s.Image)
			lists += len(s.List)
			lines += len(s.Line)
			rects += len(s.Rect)
			arcs += len(s.Arc)
			ellipses += len(s.Ellipse)
			curves += len(s.Curve)
			polygons += len(s.Polygon)
		}

		show("text", texts)
		show("image", images)
		show("list", lists)
		show("line", lines)
		show("rect", rects)
		show("ellipse", ellipses)
		show("arc", arcs)
		show("curve", curves)
		show("polygon", polygons)
	}
}
