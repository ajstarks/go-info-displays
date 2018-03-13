var (
	width  = flag.Int("w", 1024, "width")
	height = flag.Int("h", 768, "height")
	canvas = svg.New(os.Stdout)
)

func main() {
        flag.Parse()
        for _, f := range flag.Args() {
                canvas.Start(*width, *height)
                dothing(f)
                canvas.End()
        }
}
