type Thing struct {
	Top  int    `xml:"top,attr"`
	Left int    `xml:"left,attr"`
	Sep  int    `xml:"sep,attr"`
	Item []item `xml:"item"`
}

type item struct {
	Width  int    `xml:"width,attr"`
	Height int    `xml:"height,attr"`
	Name   string `xml:"name,attr"`
	Color  string `xml:"color,attr"`
	Text   string `xml:",chardata"`
}
