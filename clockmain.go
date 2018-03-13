	// set up the ticker and signal handler
	ticker := time.NewTicker(1 * time.Second)
	sigint := make(chan os.Signal, 1)
	signal.Notify(sigint, os.Interrupt)

	// main loop: for each second, draw the clock components
	openvg.Start(width, height)
	for {
		select {
		case <-ticker.C:
			// get the current time
			hr, min, sec := time.Now().Clock()

			// compute element coordinates
			hx, hy, mx, my, sx, sy := timecoord(cx, cy, facesize, hr, min, sec)

			// frame and clock face
			frame(cx, cy, framesize, facesize, textsize, framecolor, facecolor)
			face(cx, cy, facesize, int(textsize*1.5))
			
			// hands
			combohand(cx, cy, mx, my, facesize*0.9, minstroke/2, minangles[min], 0, mincolor)
			combohand(cx, cy, hx, hy, facesize*0.6, minstroke/2, hourangles[hr%12], min, hrcolor)
		
			// second indicator
			secondhand(cx, cy, sx, sy, textsize)

			// center dot
			centerdot(cx, cy, textsize)

			// make the picture
			openvg.End()
		case <-sigint:
			openvg.Finish()
			return
		}
	}
