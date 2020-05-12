collisions
checkCollisions
	"wall check"
	players do: [:p | self checkWallCollisionFor: p ] .
	
	"body check"
	players doWithIndex: [ :p1 :k | 
		k to: players size do: [ :j| | p2 |
			p2 := players at: j. 
			self checkCollisionFor: p1 and: p2 ] ].
	
	diedPlayers addAll: (players select: [:p | p isDied ]).