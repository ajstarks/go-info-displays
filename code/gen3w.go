// Picture with text annotation
quote := "Tony Stark was able to build this in a cave. With a box of scraps!"
deck.StartSlide("black", "white")
deck.Image(50, 50, 1920, 1080, "cave.jpg", "https://youtu.be/MtntTvuv8Aw")
deck.Rect(70, 60, 60, 40, "black", 40)
deck.TextBlock(45, 70, quote, "sans", 5, 45, "")
deck.EndSlide()