collisions
checkBodyCollisionFor: player1 and: player2 
	(player2 body includes: player1 head)
		ifTrue: [ player1 die: 'Ran into ', player2 name, '''s body' ]