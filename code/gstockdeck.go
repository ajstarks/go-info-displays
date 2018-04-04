package main

import (
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"time"

	"github.com/ajstarks/deck/generate"
)

const (
	stockURL = "http://finance.google.com/finance/info?client=ig&q="
	top      = 80.0
	left     = 7.0
	bottom   = 15.0
	footx    = left
	footy    = 5.0
	poscolor = "rgb(136,195,38)"
	negcolor = "red"
)

type StockData struct {
	T    string  `json:"t"`
	L     float64 `json:"l"`
	C    float64 `json:"c"`
	CP float64 `json:"cp"`
}

// stockapi decodes data from the API into the target structure
func stockapi(s string) (StockData, error) {
	var data StockData
	r, err := netread(stockURL + s)
	if err != nil {
		fmt.Fprintf(os.Stderr, "%s\n", err)
		return data, err
	}
	defer r.Close()
	err = json.NewDecoder(r).Decode(&data)
	return data, err
}

// netread derefernces a URL, returning the Reader, with an error
func netread(url string) (io.ReadCloser, error) {
	client := &http.Client{Timeout: 30 * time.Second}
	resp, err := client.Get(url)
	if err != nil {
		return nil, err
	}
	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("unable to get network data for %s (%s)", url, resp.Status)
	}
	return resp.Body, nil
}

// stockslide makes the slide
func stockslide(deck *generate.Deck, symbols []string) {
/*
	x := left
	y := top
	
	rintr := (top-bottom)/float64(len(symbols))
	size := rintr/2.5
	cintr := size*4
	
	var color string
*/
	for _, s := range symbols {
		stock, err := stockapi(s)
		fmt.Fprintf(os.Stderr, "%v, %v\n", stock, err)
	/*
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
		deck.TextEnd(x, y, fmt.Sprintf("%.2f", stock.Price), "sans", size, color)
		x += cintr
		deck.TextEnd(x, y, fmt.Sprintf("%.2f", stock.Change), "sans", size, color)
		x += cintr
		deck.TextEnd(x, y, fmt.Sprintf("%.2f%%", stock.PctChange), "sans", size, color)
		x = left
		y -= rintr
		*/
	}
	ts := time.Now()
	deck.Text(footx, footy, ts.Format("Mon Jan  2 15:04:05 MST-0700 2006"), "sans", 1.5, "yellow")
}

func main() {
	deck := generate.NewSlides(os.Stdout, 0, 0)
	deck.StartSlide("black", "white")
	stockslide(deck, os.Args[1:])
	deck.EndSlide()
}
