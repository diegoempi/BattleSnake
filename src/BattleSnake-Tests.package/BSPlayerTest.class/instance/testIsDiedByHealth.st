tests
testIsDiedByHealth
	self deny: player isDead.
	player health: 0.
	self deny: player isDead.
	player decreaseHealth.
	self assert: player isDead.
	self assert: player dieReason equals: 'Starved'.