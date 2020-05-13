tets - collisions
testSelfCollision
	| game p1 |
	game := BSGame new.
	p1 := game addHumanPlayer.

	p1 body: { 5@5. 5@5 }.
	
	game eliminateSnakesIfNecessary.
	
	self assert: p1 eliminatedCause equals: 'Collided with itself'.
	