tests
testAddPlayers
	| game player |
	game := BSGame new.
	player := game addHumanPlayer.
	
	self assert: player name equals: 'snake1'