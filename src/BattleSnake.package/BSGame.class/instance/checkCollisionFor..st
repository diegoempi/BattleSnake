collisions
checkCollisionFor: aPlayer
	self checkWallCollisionFor: aPlayer.
	self checkBodyCollision: aPlayer.
	aPlayer isDied
		ifTrue: [ diedPlayers add: aPlayer ]