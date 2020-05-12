tets - collisions
testBodyCollision02
	| game p1 p2 |
	self skip.
	game := BSGame new.
	p1 := game addHumanPlayer.
	p2 := game addHumanPlayer.
	p1 body: { 1@1. 1@2. 1@3 }.
	p2 body: { 1@1. 2@1. 3@1 }.
	
	game checkCollisions