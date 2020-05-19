tests
testAllPlayers
	| game player1 player2 |
	game := BSGame new.
	player1 := game addPlayer: BSHumanPlayer new.
	player2 := game addPlayer: BSHumanPlayer new.
	
	player1 die: 'dead by me'.
	
	self assert: game allPlayers asArray equals: { player1. player2 }.