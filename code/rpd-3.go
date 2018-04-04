var (
	width  = flag.Int("w", 1024, "width")
	height = flag.Int("h", 768, "height")
	canvas = svg.New(os.Stdout)
)