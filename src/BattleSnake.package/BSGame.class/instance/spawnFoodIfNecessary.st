update cycle
spawnFoodIfNecessary
	(foods isEmpty or: [ random next < self foodSpawnChance ])
		ifTrue: [ self spawnFood: 1 ]