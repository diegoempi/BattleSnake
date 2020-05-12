tets - collisions
testWallCollision
	| game p |
	game := BSGame new.
	p := game addHumanPlayer.
	
	p body: { 1@1. 2@1 }.
	game checkWallCollisionFor: p.
	self assert: p isLive.
	
	p body: { 0@1. 1@1 }.
	game checkWallCollisionFor: p.
	self assert: p isDied.