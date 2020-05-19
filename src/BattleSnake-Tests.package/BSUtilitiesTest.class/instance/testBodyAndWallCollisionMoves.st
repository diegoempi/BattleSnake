tests
testBodyAndWallCollisionMoves
	| game player |
	game := BSGame new.
	player := game addPlayer: BSIAPlayer2 new.
	
	player body: { 4@1. 3@1. 2@1 }.
	
	self assert: player bodyAndWallCollisionMoves equals: #(left up).