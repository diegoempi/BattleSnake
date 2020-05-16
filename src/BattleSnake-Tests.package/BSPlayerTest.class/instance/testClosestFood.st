tests
testClosestFood
	| game |
	game := BSGame new.
	
	game foods: { 3@2. 3@3. }.
	player := game addPlayer: BSIAPlayer1 new.
	player body: { 1@2. 1@3. 1@4 }.
	self assert: player closestFood equals: 3@2.