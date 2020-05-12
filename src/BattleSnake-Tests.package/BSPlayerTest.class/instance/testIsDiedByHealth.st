tests
testIsDiedByHealth
	self deny: player isDied.
	player health: 0.
	self deny: player isDied.
	player decreaseHealth.
	self assert: player isDied.
	self assert: player dieReason equals: 'Starved'.