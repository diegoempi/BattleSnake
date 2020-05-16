tests
testIAPlayer2
	| game |	
	game := BSGame new.
	player := game addPlayer: BSIAPlayer2 new.	
		
	game foods: { 1@6 }.
	player body: {1@2. 1@3. 1@4}.
	
	game runOnceNoFoodSpawn. 
	game runOnceNoFoodSpawn.
	
	self assert: player isAlive.