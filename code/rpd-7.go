func main() {
	flag.Parse()
	for _, f := range flag.Args() {
		canvas.Start(*width, *height)
		dothing(f)
		canvas.End()
	}
}
