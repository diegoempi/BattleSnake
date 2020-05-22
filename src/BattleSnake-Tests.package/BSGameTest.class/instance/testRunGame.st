tests
testRunGame
	| game player1 player2 |
	game := BSGame new.
	player1 := game addPlayer: BSIAPlayer2 new.
	player2 := game addPlayer: BSIAPlayer3 new.
	
	player1 body: { 2@1. 2@2 }.
	player1 health: 1.
	player2 body: { 4@2. 4@3 }.
	
	winner := game runGame.
	
	self assert: game hasEnded equals: true.
	self assert: winner equals: player2.
