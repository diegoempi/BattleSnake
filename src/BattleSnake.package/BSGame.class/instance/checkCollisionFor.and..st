collisions
checkCollisionFor: player1 and: player2
	player1 = player2 
		ifTrue: [ ^ self checkSelfCollisionFor: player1 ].
	player1 head = player2 head
		ifTrue: [ 
			self checkHeadToHeadCollisionFor: player1 and: player2.
			^ self checkHeadToHeadCollisionFor: player2 and: player1. ].
	self checkBodyCollisionFor: player1 and: player2