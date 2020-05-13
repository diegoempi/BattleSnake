update cycle
eliminateSnakesIfNecessary
	players do: [ :p1 | self checkFor: p1 ].
	diedPlayers addAll: (players select: [ :p | p isDead ]).
	players := players select: [ :p | p isAlive ]