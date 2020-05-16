collisions
checkHeadToHeadCollisionFor: player1 and: player2 
	player1 size <= player2 size
		ifTrue: [ player1 die: 'Lost head-to-head with ', player2 name ].