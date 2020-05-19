tests
testIAPlayer201

	| game |	
	game := BSGame new.
	player := game addPlayer: BSIAPlayer2 new.	
		
	game foods: { 1@1 }.
	player body: { 4@3. 4@2. 4@1. 3@1. 3@2. 3@3. }.
	
	game runOnceNoFoodSpawn.
	
	self assert: player isAlive.