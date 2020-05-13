tests - food
testSpawnFood
	| game |
	game := BSGame new.
	self assert: game foods isEmpty.
	game spawnFoodIfNecessary.
	self assert: game foods size equals: 1.
	game spawnFood: 10.
	self assert: game foods size equals: 11.
	20 timesRepeat: [ game spawnFoodIfNecessary ]