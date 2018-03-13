func readthing(r io.Reader) {
	var t Thing
	err := xml.NewDecoder(r).Decode(&t)
	if err != nil {
		fmt.Fprintf(os.Stderr, "%v\n", err)
		return
	}
	drawthing(t)
}