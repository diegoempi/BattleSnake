collisions
checkWallCollisionFor: aPlayer 
	(map isValidPoint: aPlayer head) ifTrue: [ ^ self ].
	aPlayer die: #'Moved out of bounds'.