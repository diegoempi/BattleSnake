initialization
initialize
	super initialize.
	game := BSSinglePlayerGame new.
	colorsForShape := NSScale ordinal
		domain: { 0. 1. 2. $F. };
		range: { Color lightGray. Color blue. Color green. Color red }.
	