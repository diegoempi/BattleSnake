tests
testRandomPlayer

	| moves |
	player := BSRandomPlayer new.
	
	moves := #(left right up down).
	self assert: (moves includes: player nextMove)