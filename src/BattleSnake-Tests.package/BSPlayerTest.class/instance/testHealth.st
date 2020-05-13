tests
testHealth
	self assert: player health equals: 90.
	player reduceHealth.
	self assert: player health equals: 89.
	player health: 1.
	player reduceHealth.
	self assert: player isAlive. 
	self assert: player health equals: 0.
	player reduceHealth. 
	self assert: player isDead. 
	self assert: player health equals: -1.
	
	