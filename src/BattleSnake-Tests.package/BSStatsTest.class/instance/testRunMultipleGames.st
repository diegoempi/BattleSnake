tests
testRunMultipleGames
	| game winners stats player1 player2 |
	self skip.
	stats := BSStats new.
	game := BSGame new.
	player1 := game addPlayer: BSIAPlayer2 new.
	player2 := game addPlayer: BSIAPlayer3 new.

	player1 body: { 2@1. 2@2 }.
	player1 health: 1.
	player2 body: { 4@2. 4@3 }.
	
	winners := stats runGame: game times: 100.
	
	self assert: (winners at: player2) equals: 100.
	self assert: (winners at: player1) equals: 0.
	
	