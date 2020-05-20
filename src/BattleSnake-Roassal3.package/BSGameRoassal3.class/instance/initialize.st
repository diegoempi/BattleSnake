initialization
initialize
	size := 20.
	padding := 4.
	super initialize.
	game := BSSinglePlayerGame new.
	snakeColor := RSColorPalette diverging puor10.
	snakes := foods :=  #().