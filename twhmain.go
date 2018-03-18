func main() {

	//... 
	
	dateticker := time.NewTicker(1 * time.Minute)
	weatherticker := time.NewTicker(5 * time.Minute)
	headticker := time.NewTicker(10 * time.Minute)
	sigint := make(chan os.Signal, 1)
	signal.Notify(sigint, os.Interrupt)

	for {
		select {
		case <-weatherticker.C:
			canvas.weather(*location)
		case <-dateticker.C:
			canvas.clock(*smartcolor)
		case <-headticker.C:
			canvas.headlines(*section, *thumb)
		case <-sigint:
			openvg.Finish()
			os.Exit(0)
		}
	}
}
