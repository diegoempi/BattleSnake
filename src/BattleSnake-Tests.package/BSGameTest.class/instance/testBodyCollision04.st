tets - collisions
testBodyCollision04
	| game p1 p2 p3 p4 |
	game := BSGame new.
	p1 := game addHumanPlayer.
	p2 := game addHumanPlayer.
	p3 := game addHumanPlayer.
	p4 := game addHumanPlayer.
	
	p1 body: { 5@5. 6@5. 7@5 }.
	p2 body: { 5@5. 5@6. 5@7. 5@8 }.
	p3 body: { 5@5. 4@5 }.
	p4 body: { 5@5. 5@4 }.
	
	game eliminateSnakesIfNecessary.
	
	self assert: game diedPlayers size equals: 3.
	self assert: p1 eliminatedCause equals: 'Lost head-to-head with snake2'.
	self assert: p3 eliminatedCause equals: 'Lost head-to-head with snake4'.
	self assert: p4 eliminatedCause equals: 'Lost head-to-head with snake3'.
	self assert: p2 eliminatedCause equals: nil.
	