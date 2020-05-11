tests
testHealth
	self assert: player health equals: 90.
	player decreaseHealth.
	self assert: player health equals: 89.
	
	