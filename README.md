# Go for Information Displays
![](page1.png)

## Introduction

The story of using Go to make _Information Displays_: "An interesting arrangement
of text and graphics designed to inform".  The story is conveyed through
three Go packages: [SVGo](https://github.com/ajstarks/svgo) (generating SVG), [OpenVG](https://github.com/ajstarks/openvg), (wrapper to the OpenVG library on the Raspberry Pi) and [Deck](https://github.com/ajstarks/deck) (a package for presentations).

## Colophon

This deck uses [Fira Sans, Fira Mono](https://en.wikipedia.org/wiki/Fira_Sans), and [Charter](https://en.wikipedia.org/wiki/Bitstream_Charter).

This command line to generates the deck:

	$ ./mkdeck

The command can also make variations using	
[Noto Sans, Noto Mono, Noto Serif](https://en.wikipedia.org/wiki/Noto_fonts) 
or the [Go fonts](https://blog.golang.org/go-fonts)

	$ ./mkdeck noto
	$ ./mkdeck go

You can also generate the deck with this command using [pdfdeck](https://github.com/ajstarks/deck/tree/master/cmd/pdfdeck):

	$ pdfdeck -pagesize 1920,1080 -sans FiraSans-Regular -mono FiraMono-Regular -serif Charter-Regular goinfo.xml

The fonts are stored in $DECKFONTS, generated from TrueType files with the ```makefont``` utility 
from the [gofpdf](https://github.com/jung-kurt/gofpdf) package.

	$ cd $DECKFONTS
	$ makefont -embed /path/to/ttf-file
	

