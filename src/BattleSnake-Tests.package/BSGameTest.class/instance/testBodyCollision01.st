tets - collisions
testBodyCollision01
	| game p1 p2 |
	self skip.
	game := BSGame new.
	p1 := game addHumanPlayer.
	p2 := game addHumanPlayer.
	p1 body: { 1@1. 1@2. 1@3 }.
	p1 nextMove: #right.
	
	p2 body: { 2@2. 3@2. 4@2 }.
	p2 nextMove: #left.
	
	self assert: game map asString equals:
'(1 0 0 0 0 0 0 0 0 0
1 2 2 2 0 0 0 0 0 0
1 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 )'.
	game runOnce.
	self assert: game map asString equals:
'(1 1 0 0 0 0 0 0 0 0
1 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 )'.