func vmap(value, low1, high1, low2, high2 float64) float64 {
    return low2 + (high2-low2)*(value-low1)/(high1-low1)
}

x := vmap(datax, 10, 20, 0, 1023)
y := vmap(datay, 0, 10000, 0, 767)

