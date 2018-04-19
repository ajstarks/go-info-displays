package main

import (
	"flag"
	"fmt"
	"math"
)

type tfunc struct {
	label    string
	function func(float64) float64
}

func main() {
	fname := flag.String("f", "sine", "function name")
	xrange := flag.String("x", "0,6.283185,0.1", "x range")
	flag.Parse()

	var (
		f tfunc
		xmin  = 0.0
		xmax  = 2 * math.Pi
		xstep = 0.1
	)
	fmt.Sscanf(*xrange, "%f,%f,%f", &xmin, &xmax, &xstep)
	switch *fname {
	case "e", "exp":
		f = tfunc{"y=e(x)", math.Exp}
	case "log":
		f = tfunc{"y=log(x)", math.Log10}
	case "sqrt":
		f = tfunc{"y=sqrt(x)", math.Sqrt}
	case "sine", "sin":
		f = tfunc{"y=sin(x)", math.Sin}
	case "cosine", "cos":
		f = tfunc{"y=cos(x)", math.Cos}
	case "sincos":
		f = tfunc{"y=sin(x) * cos(x)",
			func(x float64) float64 { return math.Sin(x) * math.Cos(x) }}
	default:
		f = tfunc{"y=1", func(float64) float64 { return 1 }}
	}
	fmt.Printf("# %s\n", f.label)
	for x := xmin; x < xmax; x += xstep {
		fmt.Printf("%.2f\t%.4f\n", x, f.function(x))
	}
}
