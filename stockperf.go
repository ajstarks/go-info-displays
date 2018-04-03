package main

import (
	"bufio"
	"flag"
	"fmt"
	"io"
	"os"
	"os/exec"
	"strings"

	"github.com/ajstarks/deck/generate"
)

const (
	opts   = "-dmin=t -bar=f -vol -xlabel=0 -val=f -yaxis=f -title=f -fulldeck=f -csv"
	cmdfmt = "dchart %s -top=%.1f -bottom=%.1f -left=%.1f -right=%.1f %s %s"
	copt   = "-csvcol=Date,Close"
	vopt   = "-color=lightgray -csvcol=Date,Volume"
	dloc   = "~/Downloads"
)

func main() {
	title := flag.String("title", "Stock Performance", "title")
	time := flag.String("time", "", "time period")
	flag.Parse()
	deck := generate.NewSlides(os.Stdout, 0, 0)
	deck.StartDeck()
	deck.StartSlide()
	process(deck, *title, *time, os.Stdin)
	deck.EndSlide()
	deck.EndDeck()
}


var xmlmap = strings.NewReplacer(
	"&", "&amp;",
	"<", "&lt;",
	">", "&gt;")
	
func xmlesc(s string) string {
	return xmlmap.Replace(s)
}


func process(deck *generate.Deck, title, time string, r io.Reader) {

	plotwidth := 20.0
	plotheight := 15.0

	cleft := 50.0
	cright := cleft + plotwidth
	vleft := 75.0
	vright := vleft + plotwidth

	tx := 5.0
	ty := 90.0

	nx := 5.0
	sx := cleft - 10

	dx := vright
	cx := cleft + ((cright - cleft) / 2)
	vx := vleft + ((vright - vleft) / 2)

	top := 80.0
	bottom := 70.0

	deck.Text(tx, ty, xmlesc(title), "sans", 5, "")
	deck.TextEnd(dx, ty, xmlesc(time), "sans", 2, "")
	deck.TextMid(cx, top, "Closing Price", "sans", 1, "")
	deck.TextMid(vx, top, "Volume", "sans", 1, "")

	scanner := bufio.NewScanner(r)
	for scanner.Scan() {
		data := strings.Split(scanner.Text(), "\t")
		if len(data) != 2 {
			continue
		}

		symbol := data[0]
		name := data[1]
		deck.Text(nx, bottom, xmlesc(name), "sans", 3.5, "")
		deck.Text(sx, bottom, symbol, "sans", 1.5, "gray")
		plot(fmt.Sprintf("%s/%s.csv", dloc, symbol), vopt, top, bottom, vleft, vright)
		plot(fmt.Sprintf("%s/%s.csv", dloc, symbol), copt, top, bottom, cleft, cright)

		top -= plotheight
		bottom -= plotheight
	}
}

func plot(fname, datatype string, top, bottom, left, right float64) {
	pcmd := fmt.Sprintf(cmdfmt, opts, top, bottom, left, right, datatype, fname)
	out, err := exec.Command("/bin/sh", "-c", pcmd).Output()
	if err != nil {
		fmt.Fprintf(os.Stderr, "%v\n", err)
		return
	}
	fmt.Printf("%s\n", out)
}
