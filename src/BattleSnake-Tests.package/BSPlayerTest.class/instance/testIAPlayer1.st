tests
testIAPlayer1
	| game |	
	game := BSGame new.
	player := game addPlayer: BSIAPlayer1 new.	
		
	game foods: { 3@2 }.
	player body: {1@2. 1@3. 1@4}.
	
	game runOnceNoFoodSpawn. 
	game runOnceNoFoodSpawn.
	
	self assert: game foods isEmpty.
	
	game foods: { 4@4 }.
	
	game runOnceNoFoodSpawn. 
	game runOnceNoFoodSpawn.
	
	self assert: game foods size equals: 1.
	game runOnceNoFoodSpawn.
	self assert: game foods isEmpty.