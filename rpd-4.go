func dothing(location string) {
	f, err := os.Open(location)
	if err != nil {
		fmt.Fprintf(os.Stderr, "%v\n", err)
		return
	}
	defer f.Close()
	readthing(f)
}
