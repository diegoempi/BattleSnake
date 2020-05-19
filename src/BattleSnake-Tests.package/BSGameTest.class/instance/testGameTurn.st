tests
testGameTurn
	| game |
	game := BSGame new.
	
	self assert: game turn equals: 0.
	
	game runOnce.
	game runOnce.
	
	self assert: game turn equals: 2.