collisions
checkHeadToHeadCollisionFor: player1 and: player2 
	player1 length <= player2 length
		ifTrue: [ player1 die. ]