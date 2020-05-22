update cycle
updateGame
	super updateGame.
	snakes do: #remove.
	foods do:  #remove.
	foods := game foods collect: [ :f | self foodFor: f ].
	snakes := game allPlayers collect: [ :p | self snakeFor: p ] as: RSGroup.
	canvas
		addAll: snakes;
		addAll: foods.
	canvas signalUpdate.
	game runOnce.