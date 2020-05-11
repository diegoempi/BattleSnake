tests
testGameFeedPlayer
	| game player |
	self skip.
	game := BSGame new.
	player := game addHumanPlayer.
	self assert: game maxHealth equals: 100.
	self assert: player length equals: 1.
	self assert: player health equals: 100.
	player nextMove: #down.
	game runOnce.
	game runOnce.
	game runOnce.
	self assert: player health equals: 97.
	game feedPlayer: player.
	self assert: player health equals: 100.
	self assert: player length equals: 2.