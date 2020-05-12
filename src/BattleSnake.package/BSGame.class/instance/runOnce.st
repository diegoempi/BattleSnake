update cycle
runOnce
	players do: [ :p | self move: p ].
	self checkCollisions.
	players := players select: [ :p | p isAlive ].
	players do: [ :p | self feedIfNecessary: p ].
	