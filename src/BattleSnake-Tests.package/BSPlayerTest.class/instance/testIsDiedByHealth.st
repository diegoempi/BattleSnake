tests
testIsDiedByHealth
	self deny: player isDied.
	player health: 0.
	self deny: player isDied.
	player health: -1.
	self assert: player isDied.