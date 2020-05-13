tests
testHealth
	self assert: player health equals: 90.
	player decreaseHealth.
	self assert: player health equals: 89.
	player health: 1.
	player decreaseHealth.
	self assert: player isAlive. 
	self assert: player health equals: 0.
	player decreaseHealth. 
	self assert: player isDead. 
	self assert: player health equals: -1.
	self assert: player dieReason equals: 'Starved'.
	
	