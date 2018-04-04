package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	nrow := 3
	ncol := 3
	height := 10.0
	width := 25.0

	top := 85.0
	bottom := top - height
	files := os.Args[1:]

	nf := 0
	fmt.Printf("<deck><slide>")
	for r := 0; r < nrow; r++ {
		left := 5.0
		right := left + width
		for c := 0; c < ncol; c++ {
			if nf < len(files) {
				plot(files[nf], top, bottom, left, right)
				left += 33
				right = left + 25
			}
			nf++
		}
		top -= 30
		bottom = top - height
	}
	fmt.Printf("</slide></deck>")
}

const (
	opts   = "-bar=f -vol=f -line -fulldeck=f -xlabel=60 -val=f -textsize=0.75"
	cmdfmt = "dchart %s -top=%.1f -bottom=%.1f -left=%.1f -right=%.1f %s"
)

func plot(fname string, top, bottom, left, right float64) {
	out, err := exec.Command("/bin/sh", "-c", fmt.Sprintf(cmdfmt, opts, top, bottom, left, right, fname)).Output()
	if err != nil {
		fmt.Fprintf(os.Stderr, "%v\n", err)
		return
	}
	fmt.Printf("%s\n", out)
}
