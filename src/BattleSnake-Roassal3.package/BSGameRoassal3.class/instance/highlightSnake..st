building
highlightSnake: evt
	| player snake colorF colorT color |
	player := evt shape model.
	snake := snakes shapeFromModel: player.
	snake pushFront.
	colorF := snake children first color.
	colorT := snakeColor scale: player.
	colorF = colorT ifTrue: [ 
		colorT := colorT muchDarker ].
	color := NSScale linear
		domain: #(0 0.25 0.5 0.75 1);
		range: { colorF. colorT. colorF. colorT. colorF }.
	canvas newAnimation
		duration: 750 milliSeconds;
		scale: color;
		onStepDo: [ :col |
			snake children do: [ :c |
				c color: col ] ]