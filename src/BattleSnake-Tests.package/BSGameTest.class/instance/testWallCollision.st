tets - collisions
testWallCollision
	| game p |
	game := BSGame new.
	p := game addHumanPlayer.
	
	p body: { 1@1. 2@1 }.
	game checkWallCollisionFor: p.
	self assert: p isAlive.
	
	p body: { 0@1. 1@1 }.
	game checkWallCollisionFor: p.
	self assert: p isDead.
	self assert: p eliminatedCause equals: 'Moved out of bounds'.