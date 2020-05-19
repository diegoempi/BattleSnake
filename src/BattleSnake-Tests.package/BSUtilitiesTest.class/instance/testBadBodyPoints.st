tests
testBadBodyPoints
	| game player |
	game := BSGame new.
	player := game addPlayer: BSIAPlayer2 new.
	player body: { 2@2. 1@2. 1@1. 2@1. 3@1. 3@2. 3@3. 2@3 }.
	
	self assert: player badBodyPoints equals: { 1@2. 2@1. 3@2. 2@3 }.