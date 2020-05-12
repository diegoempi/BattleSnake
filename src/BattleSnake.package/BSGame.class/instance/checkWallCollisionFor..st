collisions
checkWallCollisionFor: aPlayer 
	(map isValidPoint: aPlayer head) ifTrue: [ ^ self ].
	aPlayer die.