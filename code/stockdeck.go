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
	stockURL = "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol="
	top      = 85.0
	left     = 7.0
	bottom   = 15.0
	footx    = left
	footy    = 5.0
	poscolor = "rgb(136,195,38)"
	negcolor = "red"
)

type StockData struct {
	Symbol    string  `json:"Symbol"`
	Price     float64 `json:"LastPrice"`
	Change    float64 `json:"Change"`
	PctChange float64 `json:"ChangePercent"`
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

// vmap maps one interval to another
func vmap(value float64, low1 float64, high1 float64, low2 float64, high2 float64) float64 {
	return low2 + (high2-low2)*(value-low1)/(high1-low1)
}

// stockslide makes the slide
func stockslide(deck *generate.Deck, symbols []string) {

	stocks := make([]StockData, len(symbols))
	var data StockData
	var err error
	max := -1.0
	for _, s := range symbols {
		data, err = stockapi(s)
		if err != nil {
			continue
		}
		stocks = append(stocks, data)
		if data.Price > max {
			max = data.Price
		}
	}
	x := left
	y := top

	rintr := (top - bottom) / float64(len(symbols))
	size := rintr / 2.5
	cintr := size * 4

	var color string
	for _, s := range stocks {
		if s.Price == 0 {
			continue
		}
		if s.Change < 0 {
			color = negcolor
		} else {
			color = poscolor
		}

		//xs := vmap(s.Price, 0, max, x, x+(cintr*4))
		//deck.Line(x, y-size*.6, xs, y-size*.6, size/4, "gray", 50)
		deck.Text(x, y, s.Symbol, "sans", size, "")
		x += cintr * 2
		deck.TextEnd(x, y, fmt.Sprintf("%.2f", s.Price), "sans", size, "")
		x += cintr
		deck.TextEnd(x, y, fmt.Sprintf("%.2f", s.Change), "sans", size, color)
		x += cintr
		deck.TextEnd(x, y, fmt.Sprintf("(%.2f%%)", s.PctChange), "sans", size, color)
		x = left
		y -= rintr
	}
	deck.Text(footx, footy, time.Now().Format("2006-01-02 15:04:05"), "sans", 1.5, "yellow")
}

func main() {
	deck := generate.NewSlides(os.Stdout, 0, 0)
	deck.StartSlide("black", "white")
	stockslide(deck, os.Args[1:])
	deck.EndSlide()
}
