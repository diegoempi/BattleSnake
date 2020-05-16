update cycle
updateGame
	super updateGame.
	snakes do: #remove.
	foods do:  #remove.
	foods := game foods collect: [ :f | self foodFor: f ].
	snakes := game players collect: [ :p | self snakeFor: p ].
	canvas
		addAll: snakes;
		addAll: foods.
	canvas signalUpdate.
	game runOnce.