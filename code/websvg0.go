package main

import (
	"github.com/ajstarks/svgo"
	"log"
	"net/http"
	"strings"
)

const defaultstyle = "fill:rgb(127,0,0)"

func main() {
	http.Handle("/circle/", http.HandlerFunc(circle))
	err := http.ListenAndServe("localhost:1958", nil)
	if err != nil {
		log.Println("ListenAndServe:", err)
	}
}

func circle(w http.ResponseWriter, req *http.Request) {
	w.Header().Set("Content-Type", "image/svg+xml")
	s := svg.New(w)
	s.Start(500, 500)
	s.Title("Circle")
	s.Circle(250, 250, 125, shapestyle(req.URL.Path))
	s.End()
}

func shapestyle(path string) string {
	i := strings.LastIndex(path, "/") + 1
	if i > 0 && len(path[i:]) > 0 {
		return "fill:" + path[i:]
	}
	return defaultstyle
}
