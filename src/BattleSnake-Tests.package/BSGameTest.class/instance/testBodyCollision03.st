tets - collisions
testBodyCollision03
	| game p1 p2 |
	game := BSGame new.
	p1 := game addHumanPlayer.
	p2 := game addHumanPlayer.
	p1 body: { 1@1. 1@2. 1@3 }.
	p2 body: { 1@1. 2@1. 3@1. 4@1 }.
	
	game eliminateSnakesIfNecessary.
	
	self assert: p1 isDead.
	self assert: p1 eliminatedCause equals: 'Lost head-to-head with snake2'.
	self deny: p2 isDead.
	self assert: p2 eliminatedCause equals: nil.
	