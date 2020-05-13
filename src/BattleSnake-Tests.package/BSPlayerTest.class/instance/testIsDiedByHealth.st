tests
testIsDiedByHealth
	self deny: player isDead.
	player health: 0.
	self deny: player isDead.
	player reduceHealth.
	self assert: player isDead.