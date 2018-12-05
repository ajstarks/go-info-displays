deck
    canvas 1920 1080

	tuftesays="Display data for precise, effective, quick analysis, Small multiples, optimizing the data-ink ratio Visual and beautiful evidence."
	holmesays="Designing for the context: The data visualizer asks: “What’s the data?”, the infographics designer: “What’s the Story?”"
	ajsays="An interesting arrangement of text and graphics, designed to convey a message"
	tquote="Thompson wanted to create a comfortable computing environment constructed according to his own design, using whatever means were available"
 	pquote="Go is not the process of some Whiggish development process. We were just trying to get something that worked for us"
 	tease="are you going to share the library or just tease us with pictures?  ;-)"
	idea="Reducing the distance from the idea to the picture"
	subclass="So, the next time you're about to make a subclass, think hard and ask yourself"
	tonyquote="Tony Stark was able to build this in a cave! With a box of scraps!"
	alice1="THE Caterpillar and Alice looked at each other for some time in silence: at last the Caterpillar took the hookah out of its mouth, and addressed her in a languid, sleepy voice. “Who are you?” said the Caterpillar. This was not an encouraging opening for a conversation. Alice replied, rather shyly, “I—I hardly know, sir, just at present—at least I know who I was when I got up this morning, but I think I must have been changed several times times since then." 
	alice2="You promised to tell me our history, you know,” said Alice, “and why it is you hate—C and D, she added in a whisper, half afraid that it would be offended again. Mine is a long and a sad tale!” said the Mouse, turning to Alice, and sighing. “It is a long tail, certainly,” said Alice, looking down with wonder at the Mouse’s tail; “but why do you call it sad?” And she kept on puzzling about it while the Mouse was speaking, so that her idea of the tale was something like this:—"	
	zukq1="The new masters of our universe are people who are essentially only half-educated."
	zukq2="They have had no exposure to the humanities or the social sciences, the academic disciplines that aim to provide some understanding of how society works, of history and of the roles that beliefs, philosophies, laws, norms, religion and customs play in the evolution of human culture"
	multi="The number and share of Americans living in multi- generational family households have continued to rise, despite improvements in the U.S. economy since the Great Recession. In 2016, a record 64 million people, or 20% of the U.S.population, lived with multiple generations under one roof, according to a new Pew Research Center analysis of census data."
	cx=50
	cy=50
	qleft=10
    qtop=75
    qwidth=65
    qsize=4
	qfont="serif"

	slide "black" "white"
		image "images/Go-Logo_White.png" 47 70 1061 938 50
		ctext "For Information Displays" cx 40 7
		ctext "Anthony Starks" cx 10 2 "sans" "rgb(170,170,170)"
		ctext "@ajstarks"      cx 5  2 "sans" "rgb(170,170,170)"
	eslide

	slide "black" "white"
		image "images/ds.jpg" cx cy 1920 1280
		ctext "Go is great on the back end" cx 15 5
		rect cx 15 100 20 "black" 20
	eslide

	slide "black" "white"
		image "images/july-sky.jpg" 45 cy 4224 2376 50
		rect cx 15 100 20 "black" 15
		ctext "But sometimes it's about the picture" cx 15 5
	eslide

	slide "rgb(127,127,127)" "white"
		list 10 80 6
			li "Information Displays"
			li "Packages and Tools"
			li "Lots of pictures"
			li "Why Go?"
		elist
	eslide

	slide "black" "white"
		image 		"images/greyscale_edward-tufte.png"  20 70 1644 1081 30 "http://edwardtufte.com/"
		textblock	tuftesays 35 80 50 2.5 "serif"
		image		"images/nigel-holmes-main.jpg" 20 30 419 281 100 "http://www.nigelholmes.com/"
		textblock	holmesays 35 40 45 2.5 "serif"
		ctext		"Edward Tufte" 20 51 1.5 "sans" "gray"
		ctext		"Nigel Holmes" 20 13 1.5 "sans" "gray"
	eslide

	slide "black" "white"
		textblock ajsays qleft 60 qwidth 5 qfont
	eslide

	slide
		image		"images/sisyphus3.png" cx cy 1920 1080
		text		"I hate pushing pixels" 3.5 90 5
		textblock	"Programs are much better at it" 3.5 80 20 2.4
	eslide

	slide "black" "white"
		list 10 70 6
			li "Precise"
			li "Efficient"
			li "Consistent"
		elist
	eslide
	
	slide "black"
		image	"images/ft.png" cx cy 1910 920 80
	eslide

	slide 
		ctext	"SVGo" 15 80 7
		ctext	"OpenVG" 50 80 7
		ctext	"Deck" 80 80 7
		text	"go get github.com/ajstarks/svgo/..." 5 30 1.25
		text	"go get github.com/ajstarks/openvg" 37.5 30 1.25
		text	"go get github.com/ajstarks/deck/" 67 30 1.25
		text	"go get github.com/ajstarks/deck/generate" 67 25 1.25
		text	"go get github.com/ajstarks/deck/cmd/pdfdeck/" 67 20 1.25
		text	"go get github.com/ajstarks/deck/cmd/dchart/" 67 15 1.25
		image	"images/svgopher.png" 15 55 1336 729 50
		image	"images/rotext.raw.png" 50 55 1920 1080 25
		image	"images/deck.png" 80 55 1240 1240 25
	eslide

	slide 
		image	"images/svgopher.png" 50 60 1336 729
	eslide

	slide 
		image	"images/android.png" cx cy 877 877
	eslide

	slide 
		etext	"Scale" 28 70 4
		etext	"Roundrect" 42.5 50 4
		ctext	"Circle" 57.5 48 4
		text	"Line" 40 20 4
		ctext	"Rect" 63 20 4
		ctext	"Line" 75 55 4
		ctext	"Arc" 63 37 4
		text	"rgb(164,198,57)" 50 65 4
		image	"images/android.png" cx cy 877 877
	eslide

	slide 
		ctext	"Element" 30 90 2.5 "sans" "gray"
		ctext	"Arguments" 50 90 2.5 "sans" "gray"
		ctext	"Rect" 30 80 3.5 "sans" "rgb(127,0,0)"
		ctext	"(100,200,250,125)" 50 80 3.5 "sans" "rgb(0,0,127)"
		ctext	`<rect x="100" y="200" width="250" height="125"/>` 50 60 2.5 "mono"
		etext	"(100, 200)" 35 35 2 "sans" "rgb(0,0,127)"
		ctext	"250" 50 7 2 "sans" "rgb(0,0,127)"
		ctext	"125" 70 25 2 "sans" "rgb(0,0,127)"
		rect	50 25 30 25 "black"
		line	30 89 30 85
		line	50 89 50 85
	eslide

	
	slide 
		ctext	"Element" 30 90 2.5 "sans" "gray"
		ctext	"Arguments" 50 90 2.5 "sans" "gray"
		ctext	"CSS Style" 67 90 2.5 "sans" "gray"
		ctext	"Rect" 30 80 3.5 "sans" "rgb(127,0,0)"
		ctext	"(100,200,250,125," 50 80 3.5 "sans" "rgb(0,0,127)"
		text	`"fill:gray;stroke:blue")` 37 72 3.5 "sans" "rgb(127,127,127)"
		ctext	`<rect x="100" y="200" width="250" height="125"` 50 60 2.5 "mono"
		ctext	`style="fill:gray;stroke:blue"/>` 50 54 2.5 "mono"
		etext	"(100, 200)" 35 35 2
		ctext	"250" 50 7 2
		ctext	"125" 70 25 2
		rect	50 25 30 25 "blue"
		rect	50 25 29 24 "gray" 
		line	30 89 30 85
		line	50 89 50 85
		line	67 89 67 80
	eslide

	
	slide 
		ctext	"Element" 30 90 2.5 "sans" "gray"
		ctext	"Arguments" 50 90 2.5 "sans" "gray"
		ctext	"Attributes" 75 90 2.5 "sans" "gray"
		ctext	"Rect" 30 80 3.5 "sans" "rgb(127,0,0)"
		ctext	"(100,200,250,125," 50 80 3.5 "sans" "rgb(0,0,127)"
		text	"`id='box'`, `fill='gray'`, `stroke='blue'`)" 33 72 3.5 "sans" "rgb(127,127,127)"
		ctext	`<rect x="100" y="200" width="250" height="125"` 50 60 2.5
		ctext	`id="box" fill="gray" stroke="blue"/>` 50 54 2.5 "mono"
		etext	"(100, 200)" 35 35 2
		ctext	"250" 50 7 2
		ctext	"125" 70 25 2
		rect	50 25 30 25 "blue"
		rect	50 25 29 24 "gray" 
		line	30 89 30 85
		line	50 89 50 85
		line	75 89 75 80
	eslide

	
	slide 
		textfile "code/hwsvg.go" 4 95 2 "mono"
		image	"images/hw.png" 75 72 1600 1138 50
	eslide

	
	
	
	slide 
		text	"svgplay" 5 5 2
		image	"images/svgplay1.png" cx cy 3432 1858 55
	eslide

	
	slide 
		text	"svgplay" 5 5 2
		image	"images/svgplay2.png" cx cy 3432 1858 55
	eslide

	
	slide 
		ctext	"https://ajstarks.org:1958/" 50 95 2.5
		image	"images/clock.png" 12.5 80 256 256
		image	"images/funnel.png" 37.5 80 256 256
		image	"images/rotext.png" 62.5 80 256 256
		image	"images/flower.png" 87.5 80 256 256
		image	"images/rshape.png" 12.5 50 256 256
		image	"images/cube.png" 37.5 50 256 256
		image	"images/mondrian.png" 62.5 50 256 256
		image	"images/lewitt.png" 87.5 50 256 256
		image	"images/face.png" 12.5 20 256 256
		image	"images/pacman.png" 37.5 20 256 256
		image	"images/tux.png" 62.5 20 256 256
		image	"images/concentric.png" 87.5 20 256 256
	eslide


	
	slide 
		ctext	"Data" 10 80 5
		ctext	"Picture" 10 15 5
		textfile "code/thing.xml" 17 87 1.6 "mono"
		image	"images/thingss.png" 55 35 2642 1140 50
		line	10 75 10 30 1
		polygon	"8 10 12" "31 25 31"
	eslide

	
	slide 
		textfile "code/benchmarks.xml" 25 90 1.4 "mono"
		image	"images/barchart.png" 50 22 2720 1140 40
	eslide

	
	slide 
		text		"f50 sunset" 5 90 3
		textblock	"https://api.flickr.com/services/rest/? method=flickr.photos.search &api_key=... &text=sunset &per_page=50 &sort=interestingness-desc" 5 80 10 2 "sans" "gray"
		textfile	"code/flickr-resp.xml" 5 45 2 "sans" "rgb(127,0,0)"
		image		"images/sunset.png" 70 70 800 500
	eslide

	
	slide "steelblue" "white"
		text	"SVGo Clients" 10 50 7
	eslide

	
	slide 
		image	"images/compx.png" cx cy 2166 1626 67
	eslide

	
	slide 
		image	"images/benchviz.png" cx cy 2018 1610 67
	eslide

	
	slide 
		ctext	"structlayout -json bytes Reader | structlayout-svg -t bytes.Reader > reader.svg" 50 5 2
		image	"images/bytesreader.png" cx cy 827 828
	eslide

	
	slide 
		image	"images/go-rel.png" cx cy 3334 1432 60
	eslide

	
	slide 
		image	"images/bulletgraph.png" cx cy 2716 1596 67
	eslide

	
	slide 
		image	"images/quad.png" cx cy 2106 1544 67
	eslide

	
	slide 
		image	"images/roadmap.png" cx cy 2146 1610 67
	eslide

	
	slide 
		image	"images/pv.png" cx cy 2142 1608 67
	eslide

	
	slide 
		image	"images/rr0.png" cx cy 1550 1496 72
	eslide

	
	slide 
		image	"images/apple-stockchart.png" cx cy 1600 900
	eslide

	
	slide 
		image	"images/tweetfreq.png" cx cy 2138 1596 67
	eslide

	
	slide "black"
		image	"images/planets.png" cx cy 1900 600
	eslide

	
	slide "black"
		image	"images/lt-04-jones-montiel.png" 20 50 1150 2072 45
		image	"images/lt-04-dkng-ddl.png" cx cy 1150 2072 45
		image	"images/lt-04-anderson-dkng.png" 80 50 1150 2072 45
	eslide

	
	slide "black"
		image	"images/ar.jpg" cx cy 1425 1000
	eslide

	
	slide 
		image	"images/201933.png" cx cy 900 846
	eslide

	
	slide 
		image	"images/201935.png" cx cy 900 846
	eslide

	
	slide 
		image	"images/201939.png" cx cy 900 846
	eslide

	
	slide 
		image	"images/danny.jpg" cx cy 1920 1080
	eslide

	
	slide 
		image	"images/shining.png" cx cy 1920 1080
	eslide
	
	
	slide 
		textfile "code/defunit.go" 45 92 1.8 "mono"
		textfile "code/defrunit.go" 45 65 1.8 "mono"
		textfile "code/shloop.go" 45 33 1.8 "mono"
		image	"images/unit.png" 13 84 522 414 50
		image	"images/runit.png" 18 55 462 412 50
		image	"images/unit+runit2.png" 20 22 1054 700 50
	eslide

	
	slide "black" "white"
		text	"OpenVG" 5 65 9
		image	"images/P1220686.JPG" cx cy 4224 2376 45
	eslide

	
	slide 
		image	"images/refcard.raw.png" 20 85 1920 1080 25
		image	"images/gradient.raw.png" 50 85 1920 1080 25
		image	"images/rotext.raw.png" 80 85 1920 1080 25
		image	"images/plot.raw.png" 20 55 1920 1080 25
		image	"images/hellovg.raw.png" 50 55 1920 1080 25
		image	"images/image.raw.png" 80 55 1920 1080 25
		image	"images/slide1.raw.png" 20 25 1920 1080 25
		image	"images/planets.raw.png" 50 25 1920 1080 25
		image	"images/slide4.raw.png" 80 25 1920 1080 25
	eslide

	
	slide 
		textfile	"code/hwopenvg.go" 4 95 1.5 "mono"
		image		"images/hellovg.raw.png" 70 70 1920 1080 50
	eslide

	
	slide 
		text	"OpenVG Functions" 2.4 90 4
		list	2.4 70 2.5 "sans" "maroon"
			li "Circle"
			li "Ellipse"
			li "Rect"
			li "Roundrect"
			li "Line"
			li "Polyline"
			li "Polygon"
		elist
		list	15 70 2.5 "sans" "gray"
			li "(x, y, r VGfloat)"
			li "(x, y, w, h VGfloat)"
			li "(x, y, w, h VGfloat)"
			li "(x, y, w, h, rw, rh VGfloat)"
			li "(x1, y1, x2, y2 VGfloat)"
			li "(x, y []VGfloat)"
			li "(x, y []VGfloat)"
		elist
		list	47 70 2.5 "sans" "maroon"
			li "Arc"
			li "Qbezier"
			li "Cbezier"
			li "Image"
			li "Text"
			li "TextMid"
			li "TextEnd"
		elist
		list	57 70 2.5 "sans" "gray"
			li "(x, y, w, h, sa, aext VGfloat)"
			li "(sx, sy, cx, cy, ex, ey VGfloat)"
			li "(sx, sy, cx, cy, px, py, ex, ey VGfloat)"
			li "(x, y VGfloat, w, h int, s string)"
			li "(x, y VGfloat, s, font string, size int)"
			li "(x, y VGfloat, s, font string, size int)"
			li "(x, y VGfloat, s, font string, size int)"
		elist
	eslide

	
	slide 
		image	"images/twh20180802.png" cx cy 1920 1080
	eslide

	
	slide "black"
		image	"images/P1220110.JPG" cx cy 4224 2376 45
	eslide

	
	slide "black"
		image	"images/P1220082.JPG" cx cy 4224 2376 45
	eslide

	
	slide "black"
		image	"images/P1220418.JPG" cx cy 4224 2376 45
	eslide

	
	slide 
		textfile	"code/twhmain.go" 5 95 1.4 "mono"
		image		"images/twh20180802.png" 75 60 1920 1080 45
	eslide

	
	slide 
		textfile	"code/twhmain.go" 5 95 1.4 "mono"
		image		"images/twh20180802.png" 75 60 1920 1080 45
		rect 64 74 22.9 17 "red" 20
		rect 27 52 35 8 "red" 20
	eslide

	
	slide 
		textfile	"code/twhmain.go" 5 95 1.4 "mono"
		image		"images/twh20180802.png" 75 60 1920 1080 45
		rect 27 45 35 8 "red" 20
		rect 86.5 74 22 17 "red" 20
	eslide

	
	slide 
		textfile	"code/twhmain.go" 5 95 1.4 "mono"
		image		"images/twh20180802.png" 75 60 1920 1080 45
		rect 75 50 45 25 "red" 20
		rect 27 38 35 8 "red" 20
	eslide

	
	slide "white" "rgb(50,50,50)"
		text	"Deck" 5 45 18
		etext	"a Go package for presentations" 95 5 2.5
	eslide

	
	slide 
		textfile	"code/hello-deck.xml" 10 90 2 "mono"
		image		"images/hellodeck.png" 50 35 835 638
	eslide

	
	slide 
		etext		"Anatomy of a Deck" 95 5 2.5
		textfile	"code/exampledeck.xml" 13 90 1.4 "mono" "black" 100 2
		list		2.5 90 1.4 "sans" "rgb(127,0,0)"
			li "Start the deck"
			li "Set the canvas size"
			li "Begin a slide"
			li "Draw some text"
			li "Place an image"
			li "Make a bullet list"
			li ""
			li ""
			li ""
			li "End the list"
			li "Draw a rectangle"
			li "Draw a ellipse"
			li "Draw a polygon"
			li "Draw a line"
			li "Draw an arc"
			li "Draw a bezier"
			li "End the slide"
			li "End of the deck"
		elist
	eslide

	
	slide "white" "black"
		ctext	"Deck elements" 50 90 5
		image	"images/follow.jpg" 70 60 640 480 80
		blist	10 70 3
			li "text, image, list"
			li "rect, ellipse, polygon"
			li "line, arc, curve"
		elist
		rect	15 20 8 6 "rgb(127,0,0)"
		ellipse 27.5 20 8 6 "rgb(0,127,0)"
		line	50 20 60 20
		curve	80 20 95 30 90 20
		arc	70 20 10 8 0 180 0.1 "rgb(0,0,127)"
		polygon	"37 37 45" "17 23 20" "rgb(0,0,127)"
	eslide

	
	slide 
		ctext	"Percent Grid" cx cy 7
		ctext	"10" 10 95 3
		ctext	"20" 20 95 3
		ctext	"30" 30 95 3
		ctext	"40" 40 95 3
		ctext	"50" 50 95 3
		ctext	"60" 60 95 3
		ctext	"70" 70 95 3
		ctext	"80" 80 95 3
		ctext	"90" 90 95 3
		ctext	"10" 5 8.5 3
		ctext	"20" 5 18.5 3
		ctext	"30" 5 28.5 3
		ctext	"40" 5 38.5 3
		ctext	"50" 5 48.5 3
		ctext	"60" 5 58.5 3
		ctext	"70" 5 68.5 3
		ctext	"80" 5 78.5 3
		ctext	"90" 5 88.5 3
		line	0 0 0 100
		line	10 0 10 100
		line	20 0 20 100
		line	30 0 30 100
		line	40 0 40 100
		line	50 0 50 100
		line	60 0 60 100
		line	70 0 70 100
		line	80 0 80 100
		line	90 0 90 100
		line	100 0 100 100
		line	0 0 100 0
		line	0 10 100 10
		line	0 20 100 20
		line	0 30 100 30
		line	0 40 100 40
		line	0 50 100 50
		line	0 60 100 60
		line	0 70 100 70
		line	0 80 100 80
		line	0 90 100 90
		line	0 100 100 100
	eslide

	
	slide
		ctext "Percentage-based layout" 50 5 4
		ctext "10%, 50%" 10 80 4 "sans" "gray"
		ctext "50%, 50%" 50 80 4 "sans" "gray"
		ctext "90%, 50%" 90 80 4 "sans" "gray"
		line 10 80 10 50 0.1 "gray"
		line 50 80 50 50 0.1 "gray"
		line 90 80 90 50 0.1 "gray"
		circle 10 50 0.5 "gray"
		circle cx cy 0.5 "gray"
		circle 90 50 0.5 "gray"
		text "Hello" 10 50 6 "sans" "rgb(127,0,0)"
		image "images/follow.jpg" cx cy 640 480
		square 90 50 15 "maroon" 50
	eslide

	slide "white" "rgb(50,50,50)"
		cimage "images/land.png" "Landscape" 25 60 800 600 
		cimage "images/port.png" "Portrait" 75 60 600 800
		ctext "Scaling the canvas" 50 5 4
	eslide

	
	slide 
		etext	"Data" 15 48.5 3 "sans" "black"
		ctext	"Process" 25 48.5 3 "sans" "black"
		ctext	"deck" 40 48.5 3 "sans" "white"
		ctext	"PDF (pdfdeck)" 85 78 3 "sans" "white"
		ctext	"PNG (pngdeck)" 85 58 3 "sans" "white"
		ctext	"SVG (svgdeck)" 85 38 3 "sans" "white"
		ctext	"OpenVG (vgdeck)" 85 18 3 "sans" "white"
		line	15 50 35 50 2 "gray" 30
		line	45 50 70 80 2 "maroon" 30
		line	45 50 70 60 2 "blue" 30
		line	45 50 70 40 2 "green" 30
		line	45 50 70 20 2 "purple" 30
		rect	85 80 30 10 "maroon"
		rect	85 60 30 10 "blue"
		rect	85 40 30 10 "green"
		rect	85 20 30 10 "purple"
		circle	40 50 10  "black" 60
		circle	70 80 2 "maroon"
		circle	70 60 2 "blue"
		circle	70 40 2 "green"
		circle	70 20 2 "purple"
	eslide

	
	slide 
		text	"deck/generate text and list functions" 2.2 90 4
		list	2.2 75 2.4 "sans" "maroon"
			li "Text"
			li "TextBlock"
			li "TextMid"
			li "TextEnd"
			li "Code"
			li "List"
		elist
		list	13.5 75 2.4 "sans" "gray"
			li "(x, y float64, s, font string, size float64, color string, op ...float64)"
			li "(x, y float64, s, font string, size, margin float64, color string, op ...float64)"
			li "(x, y float64, s, font string, size float64, color string, op ...float64)"
			li "(x, y float64, s, font string, size float64, color string, op ...float64)"
			li "(x, y float64, s string, size, margin float64, color string, op ...float64)"
			li "(x, y, size, spacing, wrap float64, items []string, ltype, font, color string)"
		elist
	eslide

	
	slide 
		text	"deck/generate graphic functions" 2.2 90 4
		list	2.2 75 2.4 "sans" "maroon"
			li "Image"
			li "Rect"
			li "Square"
			li "Ellipse"
			li "Circle"
			li "Polygon"
			li "Line"
			li "Arc"
			li "Curve"
		elist
		list	13.5 75 2.4 "sans" "gray"
			li "(x, y float64, w, h int, name, link string)"
			li "(x, y, w, h float64, color string, op ...float64)"
			li "(x, y, w float64, color string, op ...float64)"
			li "(x, y, w, h float64, color string, op ...float64)"
			li "(x, y, w float64, color string, op ...float64)"
			li "(x, y []float64, color string, op ...float64)"
			li "(x1, y1, x2, y2, size float64, color string, op ...float64)"
			li "(x, y, w, h, size, a1, a2 float64, color string, op ...float64)"
			li "(x1, y1, x2, y2, x3, y3, size float64, color string, op ...float64)"
		elist
	eslide

	
	slide 
		textfile	"code/slidegen.go" 5 90 2 "mono"
		image		"images/g1w.png" 75 65 1600 900 20
		image		"images/g2w.png" 75 45 1600 900 20
		image		"images/g3w.png" 75 25 1600 900 20
	eslide

	
	slide 
		textfile	"code/gen1w.go" 5 92 2 "mono"
		image		"images/g1w.png" 28 30 1600 900 55
	eslide

	
	slide 
		textfile	"code/gen2w.go" 5 92 2 "mono"
		image		"images/g2w.png" 28 30 1600 900 55
	eslide

	
	slide 
		textfile	"code/gen3w.go" 5 92 2 "mono"
		image		"images/g3w.png" 28 30 1600 900 55
	eslide

	
	slide "rgb(240,240,240)" "black"
		ctext		"capgen slides.txt | pdfdeck ... > slides.pdf" 50 10 3.5 "mono"
		textfile	"code/slides.txt"		2 40 1.8
		image		"images/title.png"		20 70 1400 1050 40
		image		"images/section.png"	50 70 1400 1050 40
		image		"images/eames.png"		80 70 1400 1050 40
	eslide

	
	slide "rgb(240,240,240)" "black"
		textfile	"code/ed.sh" 2.5 90 1.5 "mono"
		image		"images/ed.png" 75 55 900 695
	eslide

	
	slide 
		text	"Deck Web API" 5 90 4
		text	"deckd -dir [start dir] -listen [address:port] -maxupload [bytes]" 52 90 1.2 "mono" "rgb(127,0,0)"
		list	5 80 2 "mono" "rgb(127,0,0)"
			li "GET"
			li "GET"
			li "GET"
			li "POST"
			li "POST"
			li "POST"
			li "DELETE"
			li "POST"
			li "POST"
			li "POST"
			li "POST"
		elist
		list	15 80 2 "mono" "rgb(0,0,127)"
			li "/"
			li "/deck/"
			li "/deck/?filter=[type]"
			li "/deck/content.xml?cmd=1s"
			li "/deck/content.xml?cmd=stop"
			li "/deck/content.xml?slide=[num]"
			li "/deck/content.xml"
			li "/upload/ Deck:content.xml"
			li "/table/ Deck:content.txt"
			li "/table/?textsize=[size]"
			li "/media/ Media:content.mov"
		elist
		list	52 80 2
			li "List the API"
			li "List the content on the server"
			li "List content filtered by deck, image, video"
			li "Play a deck with the specified duration"
			li "Stop playing a deck"
			li "Play deck starting at a slide number"
			li "Remove content"
			li "Upload content"
			li "Generate a table from a tab-separated list"
			li "Specify the text size of the table"
			li "Play the specified video"
		elist
	eslide

	
	slide "black"
		image	"images/P1220669.JPG" cx cy 4424 2376 45
	eslide

	
	slide "steelblue" "white"
		text	"Design Examples" 10 50 7
	eslide

	
	slide
		ctext	"Bottom" 50 3 4 
		ctext	"Top" 50 93 4 
		ctext	"Left" 15 50 10 
		ctext	"Right" 65 50 10 "sans" "white"
		rect	50 95 100 10 "lightgray"
		rect	50 5 100 10 "lightgray"
		rect	15 50 30 80 "white"
		rect	65 50 70 80 "rgb(48,76,123)"
	eslide

	
	slide
		ctext	"10%" 50 3 4 
		ctext	"10%" 50 93 4 
		ctext	"30%" 15 50 10 
		ctext	"70%" 65 50 10 "sans" "white"
		rect	50 95 100 10 "lightgray"
		rect	50 5 100 10 "lightgray"
		rect	15 50 30 80 "white"
		rect	65 50 70 80 "rgb(48,76,123)"
	eslide

	
	slide
		ctext	"Footer (bottom 10%)" 50 3 4 
		ctext	"Header (top 10%)" 50 93 4
		ctext	"Summary"	15 50 5
		ctext	"(30%)"		15 40 5
		ctext	"Detail"	65 50 5 "sans" "white"
		ctext	"(70%)"		65 40 5 "sans" "white"
		rect	50 95 100 10 "lightgray"
		rect	50 5 100 10 "lightgray"
		rect	15 50 30 80 "white"
		rect	65 50 70 80 "rgb(48,76,123)"
	eslide


	
	slide "black" "white"
		text	"My Story" 5 90 6
		ctext	"Section" 20 50 5
		text	"A. Person, April 2017" 5 5 1.5
		list	40 75 4 "sans" "rgb(170,170,170)" 100 1.7
			li "One"
			li "Two"
			li "Three"
			li "Four" "sans" "white"
			li "Five"
			li "Six"
		elist
		line	30 80 30 10 0.1
	eslide

	// slide 80
	slide "steelblue" "white"
		text	"Document Links" 5 90 6
		textblock	"Add web and mailto links with the link attribute of the text element." 5 80 20 2.5
		textblock	"Once rendered as a PDF, clicking on the link opens the default browser or email client." 5 45 20 2.5
		text	"A Guide to Deck" 5 5 1.5
		etext	"Page 10" 95 5 1.5
		image	"images/links.png" 65 45 1337 820
	eslide

	// slide 81
	slide "black" "white"
		ctext	"BOS" 15 70 11
		ctext	"SFO" 15 25 11
		text	"Virgin America 351"	35 75 6.25
		text	"Gate B38" 				35 63 6.25
		text	"8:35am"				35 51 6.25
		text	"On Time" 				35 25 6.25 "sans" "rgb(136,195,38)"
		image	"images/white-plane.png" 15 55 100 100
		line	30 90 30 15
	eslide

	// slide 82
	slide "black" "white"
		ctext	"JFK" 15 70 11
		ctext	"IND" 15 25 11
		text	"US Airways 1207"		35 75 6.25
		text	"Gate C31C"				35 63 6.25
		text	"5:35pm" 				35 51 6.25
		text	"Delayed"				35 25 6.25 "sans" "red"
		image	"images/white-plane.png" 15 55 100 100
		line	30 90 30 15
	eslide

	// slide 84
	slide "black" "white"
		text	"AAPL" 7 85 5.6
		etext	"179.98" 51.8 85 5.6
		etext	"3.04" 74.2 85 5.6	"sans" "rgb(136,195,38)"
		etext	"(1.72%)" 96.6 85 5.6 "sans" "rgb(136,195,38)"
		text	"AMZN" 7 71 5.6
		etext	"1578.89" 51.8 71 5.6
		etext	"27.03" 74.2 71 5.6 "sans" "rgb(136,195,38)"
		etext	"(1.74%)" 96.6 71 5.6 "sans" "rgb(136,195,38)"
		text	"FB" 7 57 5.6
		etext	"185.23" 51.8 57 5.6
		etext	"2.89" 74.2 57 5.6 "sans" "rgb(136,195,38)"
		etext	"(1.58%)" 96.6 57 5.6 "sans" "rgb(136,195,38)"
		text	"GOOGL" 7 43 5.6
		etext	"1160.84" 51.8 43 5.6
		etext	"31.46" 74.2 43 5.6 "sans" "rgb(136,195,38)"
		etext	"(2.79%)" 96.6 43 5.6 "sans" "rgb(136,195,38)"
		text	"MSFT" 7 29 5.6
		etext	"96.54" 51.8 29 5.6
		etext	"2.11" 74.2 29 5.6 "sans" "rgb(136,195,38)"
		etext	"(2.23%)" 96.6 29 5.6 "sans" "rgb(136,195,38)"
		text	"2018-03-10 13:08:31" 7 5 1.5 "sans" "yellow"
	eslide

	// slide 85
	slide "black" "white"
		text	"AAPL" 7 85 5.6
		etext	"181.72" 51.8 85 5.6
		etext	"1.74" 74.2 85 5.6 "sans" "rgb(136,195,38)"
		etext	"(0.97%)" 96.6 85 5.6 "sans" "rgb(136,195,38)"
		text	"AMZN" 7 71 5.6
		etext	"1598.39" 51.8 71 5.6 
		etext	"19.50" 74.2 71 5.6 "sans" "rgb(136,195,38)"
		etext	"(1.24%)" 96.6 71 5.6 "sans" "rgb(136,195,38)"
		text	"FB" 7 57 5.6
		etext	"184.76" 51.8 57 5.6
		etext	"-0.47" 74.2 57 5.6 "sans" "red"
		etext	"(-0.25%)" 96.6 57 5.6 "sans" "red"
		text	"GOOGL" 7 43 5.6
		etext	"1165.93" 51.8 43 5.6
		etext	"5.09" 74.2 43 5.6 "sans" "rgb(136,195,38)"
		etext	"(0.44%)" 96.6 43 5.6 "sans" "rgb(136,195,38)"
		text	"MSFT" 7 29 5.6
		etext	"96.77" 51.8 29 5.6
		etext	"0.23" 74.2 29 5.6 "sans" "rgb(136,195,38)"
		etext	"(0.24%)" 96.6 29 5.6 "sans" "rgb(136,195,38)"
		text	"2018-03-12 21:05:06" 7 5 1.5 "sans" "yellow"
	eslide

	// slide 86
	slide "black" "white"
		text	"AAPL" 7 85 5.6
		etext	"175.30" 51.8 85 5.6
		etext	"-2.72" 74.2 85 5.6 "sans" "red"
		etext	"(-1.53%)" 96.6 85 5.6 "sans" "red"
		text	"AMZN" 7 71 5.6
		etext	"1544.93" 51.8 71 5.6
		etext	"-26.75" 74.2 71 5.6 "sans" "red"
		etext	"(-1.70%)" 96.6 71 5.6 "sans" "red"
		text	"FB" 7 57 5.6
		etext	"172.56" 51.8 57 5.6
		etext	"-12.53" 74.2 57 5.6 "sans" "red"
		etext	"(-6.77%)" 96.6 57 5.6 "sans" "red"
		text	"GOOGL" 7 43 5.6
		etext	"1100.07" 51.8 43 5.6
		etext	"-34.35" 74.2 43 5.6 "sans" "red"
		etext	"(-3.03%)" 96.6 43 5.6 "sans" "red"
		text	"MSFT" 7 29 5.6
		etext	"92.89" 51.8 29 5.6
		etext	"-1.71" 74.2 29 5.6 "sans" "red"
		etext	"(-1.81%)" 96.6 29 5.6 "sans" "red"
		text	"2018-03-20 17:42:56" 7 5 1.5 "sans" "yellow"
	eslide

	slide 
		textfile "code/stockslide.go" 3 95 1.2 "mono"
		image	"images/sd2.png" 70 70 2000 1125 45
	eslide


	slide "white" "black"
		textblock	subclass 20 70 40 4 "serif"
		text	"what would Go do" 20 35 6 "serif" "rgb(127,0,0)"
		text	"Andrew Mackenzie-Ross" 20 15 2.5
		image	"images/doc.png" 95 10 75 100
	eslide


	slide 
		ctext	"go" 7.5 50 5 "sans" "rgb(127,0,0)"
		list	15 94 2 "mono" "black" 100 1.6
			li "bug"
			li "build"
			li "clean"
			li "doc"
			li "env"
			li "fix"
			li "fmt"
			li "generate"
			li "get"
			li "install"
			li "list"
			li "mod"
			li "run"
			li "test"
			li "tool"
			li "version"
			li "vet"
		elist
		list	30 94 2 "sans" "gray" 100 1.6
			li "start a bug report"
			li "compile packages and dependencies"
			li "remove object files and cached files"
			li "show documentation for package or symbol"
			li "print Go environment information"
			li "update packages to use new APIs"
			li "gofmt (reformat) package sources"
			li "generate Go files by processing source"
			li "download and install packages and dependencies"
			li "compile and install packages and dependencies"
			li "list packages or modules"
			li "module maintenance"
			li "compile and run Go program"
			li "test packages"
			li "run specified go tool"
			li "print Go version"
			li "report likely mistakes in packages"
		elist
	eslide

	slide 
		etext	"Go Proverbs" 25 50 4
		text	"Don’t communicate by sharing memory, share memory by communicating." 35 95 1.6
		text	"Concurrency is not parallelism." 35 89.8 1.6
		text	"Channels orchestrate; mutexes serialize." 35 84.6 1.6
		text	"The bigger the interface, the weaker the abstraction." 35 79.4 1.6
		text	"Make the zero value useful." 35 74.2 1.6
		text	"interface{} says nothing." 35 69 1.6
		text	"Gofmt’s style is no one’s favorite, yet gofmt is everyone’s favorite." 35 63.8 1.6
		text	"A little copying is better than a little dependency." 35 58.6 1.6
		text	"Syscall must always be guarded with build tags." 35 53.4 1.6
		text	"Cgo must always be guarded with build tags." 35 48.2 1.6
		text	"Cgo is not Go." 35 43 1.6
		text	"With the unsafe package there are no guarantees." 35 37.8 1.6
		text	"Clear is better than clever." 35 32.6 1.6
		text	"Reflection is never clear." 35 27.4 1.6
		text	"Errors are values." 35 22.2 1.6
		text	"Don’t just check errors, handle them gracefully." 35 17 1.6
		text	"Design the architecture, name the components, document the details." 35 11.8 1.6
		text	"Documentation is for users." 35 6.6 1.6
		text	"Don’t panic." 35 1.4 1.6
		image	"images/noun_skill-share_14291.png" 30 96 300 300 15
		image	"images/noun_up-arrows_220576.png" 30 90.8 300 300 15
		image	"images/noun_pipes_61289.png" 30 85.6 300 300 15
		image	"images/noun_whale_149531.png" 30 80.4 300 300 15
		image	"images/noun_okay_13505.png" 30 75.2 300 300 15
		image	"images/noun_mute_163525.png" 30 70 300 300 15
		image	"images/noun_curly-brackets_108564.png" 30 64.8 300 300 15
		image	"images/noun_copy_110923.png" 30 59.6 300 300 15
		image	"images/noun_tools_59222.png" 30 54.4 300 300 15
		image	"images/noun_copyright_62293.png" 30 49.2 300 300 15
		image	"images/noun_capybara_90002.png" 30 44 300 300 15
		image	"images/noun_caution_82742.png" 30 38.8 300 300 15
		image	"images/noun_eye_209057.png" 30 33.6 300 300 15
		image	"images/noun_mirror_59940.png" 30 28.4 300 300 15
		image	"images/noun_danger_206486.png" 30 23.2 300 300 15
		image	"images/noun_handle-with-care_69.png" 30 18 300 300 15
		image	"images/noun_bridge_19693.png" 30 12.8 300 300 15
		image	"images/noun_document_12036.png" 30 7.6 300 300 15
		image	"images/noun_bomb_193958.png" 30 2.4 300 300 15
	eslide

	slide "rgb(200,200,200)"
		image	"images/gp-share.png" 25 50 2303 1293 40
		image	"images/gp-big.png" 74.5 50 2298 1292 40
	eslide

	slide "white" "rgb(127,0,0)"
		textblock	"Make the zero value useful." 35 65 35 7  "sans" "rgb(127,0,0)"
		image	"images/noun_okay_13505.png" 15 60 500 500
	eslide

	slide  
		text	"Chapter V" 15 85 3 "serif" "rgb(127,0,0)"
		text	"Advice from a Caterpillar" 40 85 3 "serif" "rgb(127,0,0)"
		textblock alice1 40 75 40 2  "serif"
		image	"images/Alice_05a-1116x1492.jpg" 25 50 1116 1492 45
	eslide

	slide 
		textblock alice2 10 33 40 1.5 "serif"
		text	"Fury said to a " 70 96 1.2 "serif"
		text	"mouse, That he" 68 93.6 1.2 "serif"
		text	"met in the" 66 91.2 1.2 "serif"
		text	"house, " 64 88.8 1.2 "serif"
		text	"“Let us" 61 86.4 1.2 "serif"
		text	"both go to" 63 84 1.2 "serif"
		text	"law:I will" 65 81.6 1.2 "serif"
		text	"prosecute" 67 79.2 1.2 "serif"
		text	"YOU—Come," 70 77 1.1 "serif"
		text	"I'll take no" 73 75 1.1 "serif"
		text	"denial; We" 74 73 1.1 "serif"
		text	"must have a" 71 71 1.1 "serif"
		text	"trial:For" 67 69 1.1 "serif"
		text	"really this" 64 67 1.1 "serif"
		text	"morning I've" 61 65 1.1 "serif"
		text	"nothing" 60 63 1.1 "serif"
		text	"to do.”" 59 61 1.1 "serif"
		text	"Said the" 61 59 1 "serif"
		text	"mouse to the" 63 57 1 "serif"
		text	"cur, “Such" 65 55 1 "serif"
		text	"a trial," 67 53 1 "serif"
		text	"dear Sir," 69 51 1 "serif"
		text	"With no" 72 49 1 "serif"
		text	"jury" 71 47 1 "serif"
		text	"or judge," 68 45 1 "serif"
		text	"would be" 66 43 1 "serif"
		text	"wasting" 64 41 1 "serif"
		text	"our" 63 39 1 "serif"
		text	"breath.”" 64 37 1 "serif"
		text	"“I‘ll be" 65 35 1 "serif"
		text	"judge, I‘ll" 67 33 1 "serif"
		text	"be jury," 69 31 1 "serif"
		text	"Said" 70 29 1 "serif"
		text	"cunning" 71 27 1 "serif"
		text	"old Fury:" 72 25 1 "serif"
		text	"“I‘ll try" 71 23 1 "serif"
		text	"the whole" 72 21 1 "serif"
		text	"cause," 76 19 1 "serif"
		text	"and" 77 17 1 "serif"
		text	"condemn" 74 15 1 "serif"
		text	"you" 73 13 1 "serif"
		text	"to" 72 11 1 "serif"
		text	"death.’" 73 9 1 "serif"
		image	"images/dodo.jpg" 32 68 1200 800 75
	eslide

	slide 
		etext	"codepicdeck" 95 5 3
		image	"images/svgplay-title.png" cx cy 1800 1200 90
	eslide

	slide "rgb(200,200,200)"
		image	"images/p8.pdf.png" 25 50 2500 1875 37
		image	"images/p9.pdf.png" 75 50 2500 1875 37
	eslide

	slide "rgb(200,200,200)"
		image	"images/p36.pdf.png" 25 50 2500 1875 37
		image	"images/p37.pdf.png" 75 50 2500 1875 37
	eslide

	slide "rgb(27,116,166)" "white"
		textblock	zukq1 7 85 40 3.5
		textblock	zukq2 7 50 40 2
		text		"John Naughton, The Guardian, 19 November, 2017" 7 10 1.5
		image		"images/zuk.png" cx cy 3350 2002 58
	eslide

	slide
		text "dchart: charts for deck" 5 90 5
		ctext "Bitcoin to USD" 35 79 1.5
		dchart -fulldeck=f -textsize=1   -top=75 -left=10 -bottom=50 -right=60 -color=steelblue -title=f -bar=f -vol -val=f -xlabel=0 -yaxis -grid -csv -csvcol=Date,Close -yrange=0,20000,4000 code/BTC-USD.csv
		dchart -fulldeck=f -textsize=1   -top=48 -left=10 -bottom=40 -right=60 -color=orange -yaxis=f -bar -val=f -xlabel=100 -xlast -title=f -csv -csvcol=Date,Volume code/BTC-USD.csv
		dchart -fulldeck=f -textsize=1   -top=75 -left=72 -bottom=50 -right=95 -xlabel=5  code/AAPL.d
		dchart -fulldeck=f -textsize=0.9 -top=40 -left=72            -right=75 -pgrid  -ls=2.4 -val=f code/incar.d
		dchart -fulldeck=f -textsize=0.9 -top=25 -left=40 -bottom=20 -right=60  -wbar  -ls=2.8 code/browser.d
		dchart -fulldeck=f -textsize=1   -top=25 -left=5  -bottom=15 -right=30  -val=f -bar=f -vol -xlabel=10 -color=brown code/sine.d
	eslide

	r1tb="-top=90 -bottom=70"
	r2tb="-top=55 -bottom=45"
	r3tb="-top=25 -bottom=10"

	colt1="-left=10 -right=30"
	colt2="-left=40 -right=60"
	colt3="-left=70 -right=90"

	colm1="-left=4  -right=20"
	colm2="-left=28 -right=44"
	colm3="-left=52 -right=68"
	colm4="-left=76 -right=92"

	r2opt="-xlabel=0 -bar=f -title=f"

	slide
		ctext	"bar" 20 66 2 
		ctext	"hbar" 47 66 2 
		ctext	"wbar" 80 66 2 
		ctext	"dot" 15 40 2 
		ctext	"vol" 35 40 2 
		ctext	"scatter" 60 40 2 
		ctext	"line" 85 40 2 
		ctext	"donut" 15 4 2 
		ctext	"radial" 37 4 2 
		ctext	"pmap" 60 4 2 
		ctext	"pgrid" 80 4 2 
		dchart -fulldeck=f -textsize=0.75 -bar  -xlabel=0 r1tb colt1  code/AAPL.d
		dchart -fulldeck=f -textsize=0.75 -hbar r1tb colt2  code/AAPL.d
		dchart -fulldeck=f -textsize=0.75 -wbar r1tb colt3  code/go-platform.d
		dchart -fulldeck=f -textsize=0.75  r2opt -dot 		r2tb colm1	code/AAPL.d
		dchart -fulldeck=f -textsize=0.75  r2opt -vol 		r2tb colm2	code/AAPL.d
		dchart -fulldeck=f -textsize=0.75  r2opt -scatter 	r2tb colm3 	code/AAPL.d
		dchart -fulldeck=f -textsize=0.75  r2opt -line 	    r2tb colm4	code/AAPL.d
		dchart -fulldeck=f -textsize=0.75 -donut -psize=9 -pwidth=1 -val=f  -top=24 -bottom=10 colt1 code/go-platform.d
		dchart -fulldeck=f -textsize=0.75 -pmap  -pwidth=3 -val=f -top=27 -left=50 -right=70 code/go-platform.d
		dchart -fulldeck=f -textsize=0.75 -ls=1.5 -pgrid -top=30 -left=75 -right=90 -val=f code/go-platform.d
		dchart -fulldeck=f -textsize=0.75 -radial -psize=3.5 -pwidth=7 -top=20 -left=37  code/go-platform.d
	eslide
	
	
	slide 
		textfile "code/AAPL.d" 5 70 1.25 "mono" "maroon"
		textfile "code/mockdeck.xml" 25 65 1.25 "mono"
		ctext	"data | dchart | pdf" 50 20 4 "mono"
		dchart -fulldeck=f -textsize=1   -top=75 -left=72 -bottom=50 -right=95 -xlabel=5  code/AAPL.d
	eslide
	
	slide
		dchart -fulldeck=f code/AAPL.d
		ctext	"dchart AAPL.d" 50 15 2.5 "mono" "black"
	eslide
	
	slide "white" "maroon"
		ctext	"val" 20 72 3 
		ctext	"bar" 50 50 3 
		etext	"title" 40 80 3 
		ctext	"grid" 80 75 3 
		ctext	"xlabel" 85 27 3 
		ctext	"yaxis" 10 30 3 
		etext	"left" 20 50 3 
		ctext	"top" 50 75 3 
		ctext	"bottom" 50 30 3 
		text	"right" 80 50 3 
		dchart -fulldeck=f -left=20 -right=80 -top=75 -yaxis -xlabel=2 -grid code/AAPL.d
		ctext	"dchart -left=20 -right=80 -top=75 -yaxis -xlabel=2 -grid AAPL.d" 50 15 2.5 "mono" "black"
	eslide

	slide 
		text	"Chart Types" 5 95 2.5
		text	"Chart Elements" 50 95 2.5
		text	"Position and Scaling" 5 45 2.5
		text	"Measures and Attributes" 50 45 2.5
		text	"CSV" 5 12 2.5
		list	5 90 1.3 "mono" "maroon" 100 1.5
			li "-bar"
			li "-wbar"
			li "-hbar"
			li "-scatter"
			li "-dot"
			li "-line"
			li "-vol"
			li "-pgrid"
			li "-pmap"
			li "-donut"
			li "-radial"
		elist
		list	15 90 1.3 "sans" "black" 100 1.5
			li "bar chart (default true)"
			li "word bar chart (default false)"
			li "horizontal bar chart (default false)"
			li "scatter chart (default false)"
			li "dot plot (default false)"
			li "line chart (default false)"
			li "volume plot (default false)"
			li "proportional grid (default false)"
			li "proportional map (default false)"
			li "donut chart (default false)"
			li "radial chart (default false)"
		elist
		list	50 90 1.3 "mono" "maroon" 100 1.5
			li "-grid"
			li "-val"
			li "-valpos"
			li "-pct"
			li "-yaxis"
			li "-yrange"
			li "-fulldeck"
			li "-title"
			li "-chartitle"
			li "-xlabel"
			li "-xlast"
			li "-hline"
		elist
		list	60 90 1.3 "sans" "black" 100 1.5
			li "show gridlines on the y axis (default false)"
			li "show values (default true)"
			li "value position (t=top, b=bottom, m=middle) (default \"t\")"
			li "show computed percentage with the values (default false)"
			li "show a y axis (default true)"
			li "specify the y axis labels (min,max,step)"
			li "generate full deck markup (default true)"
			li "show the title (default true)"
			li "specify the title (overriding title in the data)"
			li "x axis label interval (default 1, 0 to suppress all labels)"
			li "show the last x label"
			li "horizontal line at value with label"
		elist
		list	5 40 1.3 "mono" "maroon" 100 1.5
			li "-top"
			li "-bottom"
			li "-left"
			li "-right"
			li "-min"
			li "-max"
			li "-dmin"
		elist
		list	15 40 1.3 "sans" "black" 100 1.5
			li "top of the plot (default 80)"
			li "bottom of the plot (default 30)"
			li "left margin (default 20)"
			li "right margin (default 80)"
			li "set the minimum value"
			li "set the maximum value"
			li "data minimum (default false, min=0)"
		elist
		list	50 40 1.3 "mono" "maroon" 100 1.5
			li "-barwidth"
			li "-linewidth"
			li "-ls"
			li "-textsize"
			li "-color"
			li "-vcolor"
			li "-volop"
			li "-datafmt"
			li "-psize"
			li "-pwidth"
			li "-spokes"
		elist
		list	60 40 1.3 "sans" "black" 100 1.5
			li "barwidth (default computed from data size)"
			li "linewidth (default 0.2)"
			li "linespacing (default 2.4)"
			li "text size (default 1.5)"
			li "data color (default \"lightsteelblue\")"
			li "value color (default \"rgb(127,0,0)\")"
			li "volume opacity (default 50)"
			li "data format for values (default \"%.1f\")"
			li "diameter of the donut (default 30)"
			li "width of the donut or proportional map (default 3)"
			li "show spokes on radial charts (default false)"
		elist
		list	5 7 1.3 "mono" "maroon" 100 1.5
			li "-csv"
			li "-csvcol"
		elist
		list	12 7 1.3 "sans" "black" 100 1.5
			li "read CSV files (default false)"
			li "specify the columns to use for label,value"
		elist
	eslide



	slide
		rect 35 55 62 70 "gray" 10
		textfile "code/sine.go" 5 85 2 "mono" "black"
		textfile "code/sine.out" 70 90 2 "mono" "maroon"
	eslide
	
	slide
		dchart -fulldeck=f -val=f -bottom=50 -xlabel=10 code/sine.d
		text	"sine | dchart -val=f -bottom=50 -xlabel=10" 5 10 2 "mono" "black"
	eslide
	
	slide
		dchart -fulldeck=f -val=f -bottom=50 -xlabel=10 -bar=f -color=steelblue -vol code/sine.d
		text	"sine | dchart -val=f -bottom=50 -xlabel=10 -bar=f -color=steelblue -vol" 5 10 2 "mono" "black"
	eslide
	
	slide
		mopts="-fulldeck=f -bar=f -vol -top=90 -bottom 60 -left=20 -right=80 -val=f -title=f"
		dchart mopts -color=steelblue -xlabel=10 code/sine.d
		dchart mopts  -color=orange   -xlabel=0  code/cosine.d
		textfile "code/mksincos.sh" 5 20 1.8 "mono" "black"
	eslide
	
	slide
		topts="-fulldeck=f -color=steelblue -line -bar=f -scatter -dot -min=0 -max=30 -textsize=1 -bottom=14 -top=36"
		popts="-fulldeck=f -color=steelblue -bar=f -textsize=1.2"
		ctext "A record 64 million Americans live in multigenerational households" 50 90 3
		textblock multi 5 80 40 1.8 "serif"
		dchart popts -vol       -top=75 -bottom=55 -left=55 -right=95  code/kids2
		dchart popts -line -dot -top=35 -bottom=15 -left=10 -right=45  code/kids
		dchart topts -left=55 -right=59  code/tkids
		dchart topts -left=62 -right=67  code/akids
		dchart topts -left=69 -right=74  code/bkids
		dchart topts -left=76 -right=81  code/hkids
		dchart topts -left=83 -right=88  code/okids
		dchart topts -left=90 -right=95  code/wkids
	eslide
	
	slide
		sopts="-dmin=t -bar=f -vol -xlabel=0 -val=f -yaxis=f -title=f -fulldeck=f -csv"
		vopts="-color=slategray -csvcol=Date,Volume"
		copts="-color=steelblue -csvcol=Date,Close"
		cleft=50
		cright=70
		
		vleft=75
		vright=95
		
		stop=80
		sbot=70
		
		nsize=3.5
		ssize=1.5
		lsize=1
		
		text	"Tech Stock Performance" 5 90 5
		etext	"July 2017 - July 2018" 95 90 2
		ctext	"Closing Price" 60 stop lsize
		ctext	"Volume"		85 stop lsize
		
		text	"Apple"			5  70 nsize
		text	"AAPL"			40 70 ssize
		dchart sopts copts -top stop -bottom sbot -left cleft -right cright code/AAPL.csv
		dchart sopts vopts -top stop -bottom sbot -left vleft -right vright code/AAPL.csv
		
		stop-=15
		sbot-=15
		
		text	"Amazon.com"	5  55 nsize
		text	"AMZN"			40 55 ssize
		dchart sopts copts -top stop -bottom sbot -left cleft -right cright code/AMZN.csv
		dchart sopts vopts -top stop -bottom sbot -left vleft -right vright code/AMZN.csv
		
		stop-=15
		sbot-=15
		
		text	"Facebook"		5  40 nsize
		text	"FB"			40 40 ssize
		dchart sopts copts -top stop -bottom sbot -left cleft -right cright code/FB.csv
		dchart sopts vopts -top stop -bottom sbot -left vleft -right vright code/FB.csv
		
		stop-=15
		sbot-=15
		
		text	"Alphabet" 		5  25 nsize
		text	"GOOG" 			40 25 ssize
		dchart sopts copts -top stop -bottom sbot -left cleft -right cright code/GOOG.csv
		dchart sopts vopts -top stop -bottom sbot -left vleft -right vright code/GOOG.csv
		
		stop-=15
		sbot-=15

		text	"Microsoft"		5  10 3.5
		text	"MSFT"			40 10 1.5
		dchart sopts copts -top stop -bottom sbot -left cleft -right cright code/MSFT.csv
		dchart sopts vopts -top stop -bottom sbot -left vleft -right vright code/MSFT.csv
	eslide
	

	// Aggregated on one chart
	slide
		bntitle="Evolution of Baby Names in the US: 1880-2015"
		opt="-max=100000 -title=f -fulldeck=f -vol -val=f -bar=f -xlabel=0 -yrange=0,100000,25000"
		lsize=1.25
		ctext bntitle 50 93 2 "sans"
		dchart -color=red		opt  -xlabel=20 -grid -yaxis code/Amanda.d
		dchart -color=green		opt   code/Ashley.d
		dchart -color=blue		opt   code/Betty.d
		dchart -color=orange	opt   code/Deborah.d
		dchart -color=purple	opt   code/Dorothy.d
		dchart -color=steelblue	opt   code/Helen.d
		dchart -color=gray		opt   code/Jessica.d
		dchart -color=brown		opt   code/Linda.d
		dchart -color=salmon	opt   code/Patricia.d

		ly=20
		legend "Amanda"		10 ly lsize "sans" "red"
		legend "Ashley"		20 ly lsize "sans" "green"
		legend "Betty"		30 ly lsize "sans" "blue"
		legend "Deborah"	40 ly lsize "sans" "orange"
		legend "Dorothy"	50 ly lsize "sans" "purple"
		legend "Helen"		60 ly lsize "sans" "steelblue"
		legend "Jessica"	70 ly lsize "sans" "gray"
		legend "Linda"		80 ly lsize "sans" "brown"
		legend "Patricia"	90 ly lsize "sans" "salmon"
	eslide

	// Chart Grid
	slide
		top=88
		bottom=68
		boxw=20
		boxh=20
		boxop=7
		ctext bntitle 50 93 2 "sans"

		ctext "Amanda"		20 top lsize
		ctext "Ashley"		50 top lsize
		ctext "Betty"		80 top lsize

		rect 20 78 boxw boxh "red"		boxop
		rect 50 78 boxw boxh "green"	boxop
		rect 80 78 boxw boxh "blue"		boxop

		dchart -color=red		-top top -bottom bottom -left=10 -right=30 opt  -yaxis  code/Amanda.d
		dchart -color=green 	-top top -bottom bottom -left=40 -right=60 opt   code/Ashley.d
		dchart -color=blue 		-top top -bottom bottom -left=70 -right=90 opt   code/Betty.d

		top-=30
		bottom-=30

		ctext "Deborah" 	20 top lsize
		ctext "Dorothy" 	50 top lsize
		ctext "Helen"   	80 top lsize

		rect 20 48 boxw boxh "orange"		boxop
		rect 50 48 boxw boxh "purple"		boxop
		rect 80 48 boxw boxh "steelblue" 	boxop


		dchart -color=orange	-top top -bottom bottom -left=10 -right=30 opt  -yaxis code/Deborah.d
		dchart -color=purple	-top top -bottom bottom -left=40 -right=60 opt  code/Dorothy.d
		dchart -color=steelblue -top top -bottom bottom -left=70 -right=90 opt  code/Helen.d

		top-=30
		bottom-=30

		ctext "Jessica"		20 top lsize
		ctext "Linda"		50 top lsize
		ctext "Patricia"	80 top lsize

		rect 20 18 boxw boxh "gray"		boxop
		rect 50 18 boxw boxh "brown"	boxop
		rect 80 18 boxw boxh "salmon"	boxop

		dchart -color=gray		-top top -bottom bottom -left=10 -right=30 opt -xlabel=20 -yaxis  code/Jessica.d
		dchart -color=brown		-top top -bottom bottom -left=40 -right=60 opt -xlabel=20 code/Linda.d
		dchart -color=salmon	-top top -bottom bottom -left=70 -right=90 opt -xlabel=20 code/Patricia.d
	eslide
	
	slide "rgb(127,0,0)" "white"
		ctext "What is it about Go?" cx cy 8
	eslide

	slide "black" "white"
		ctext "fmt" cx cy 9 "mono"
	eslide

	slide "black" "white"
		ctext "func" cx cy 9 "mono"
	eslide

	slide "black" "white"
		ctext "io.Reader" cx 60 9 "mono"
		ctext "io.Writer" cx 40 9 "mono"
	eslide

	slide "black" "white"
		ctext "net/http" cx cy 9 "mono"
	eslide

	slide "black" "white"
		ctext "encoding/xml"	cx 70 9 "mono"
		ctext "encoding/json"	cx cy 9 "mono"
		ctext "encoding/csv"	cx 30 9 "mono"
	eslide

	slide "black" "white"
		ctext "cgo" cx cy 9 "mono"
	eslide

	slide "black" "white"
		ctext "The Community" cx cy 9
	eslide
	
	slide "rgb(0,0,127)" "white"
		etext	"From:" 22 80 2.5
		text	"Russ Cox" 25 80 2.5
		etext	"Subject:" 22 73 2.5
		text	"Re: [go-nuts] Visualizing Random Number Generators..." 25 73 2.5
		etext	"Date:" 22 66 2.5
		text	"March 5, 2010 1:14:44 EST" 25 66 2.5
		etext	"To:" 22 59 2.5
		text	"ajstarks <ajstarks@gmail.com>" 25 59 2.5
		textblock	tease 22 40 50 3.5
		line	10 50 90 50
	eslide


    slide "rgb(0,0,127)" "white"
        textblock tquote qleft qtop qwidth qsize qfont
        text "Dennis M. Ritchie, 'The Development of the C Language'" 10 20 2
    eslide

    slide "rgb(0,0,127)" "white"
        textblock pquote qleft qtop qwidth qsize qfont
        text "Rob Pike, 'Origin of Go's interface design', golang nuts" 10 20 2
    eslide

    slide "black" "white"
        ctext "Making Tools" cx cy 7
    eslide

    slide "black" "white"
        textblock idea  qleft 60 qwidth 5
    eslide

	labx=10
	slide "black" "white"
		image "images/picasso-hires.png"	30 cx 1280 1391 cy
		image "images/alan-turing.jpg"		70 51 1835 1460 45
		etext "Pic"		30 labx 2
		text  "asso"	30 labx 2 "sans" "gray"
		etext "Tur"		70 labx 2
		text  "ing"		70 labx 2 "sans" "gray"
	eslide

	imleft=20
	imw=75
	slide "black" "white"
		text "Thank you" 17 85 7
		image "images/twitter-logo.png"		imleft 72 92  imw
		image "images/gmail-logo.png"		imleft 59 imw imw
		image "images/github-logo.png"		imleft 44 imw imw
		image "images/speakerdeck-logo.png"	imleft 29 imw imw
		image "images/flickr-logo.png"		imleft 16 imw imw
		list 25 70 4
			li "@ajstarks"
			li "ajstarks@gmail.com"
			li "github.com/ajstarks"
			li "speakerdeck.com/ajstarks"
			li "flickr.com/photos/ajstarks"
		elist
	eslide
edeck