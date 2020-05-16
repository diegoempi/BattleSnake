tests
testBodyCollisionMoves
	| game |
	game := BSGame new.
	player := game addPlayer: BSIAPlayer2 new.
	
	player body: { 3@1. 2@1. 1@1. 1@2. 2@2. 3@2 }.
	self assert: player badBodyPoints equals: { 2@1. 3@2 }.
	
	self assert: [ player bodyCollisionMoves includes: #left ].
	self assert: [ player bodyCollisionMoves includes: #down ].