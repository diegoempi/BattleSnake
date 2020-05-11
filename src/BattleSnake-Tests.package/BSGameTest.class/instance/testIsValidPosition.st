tests
testIsValidPosition
	| game extent player1 player2 |
	game := BSGame new.
	extent := game map extent.
	self assert: extent notNil.
	self assert: (game isValidPosition: 1@1).
	self deny: (game isValidPosition: 0@0).
	self assert: (game isValidPosition: extent).
	self deny: (game isValidPosition: extent + (1@0) ).
	self deny: (game isValidPosition: extent x @ 0 ).
	
	player1 := game addHumanPlayer.
	player1 body: { 2@2. 2@3. 2@4 }.
	player2 := game addHumanPlayer.
	player2 body: { 5@2. 5@3. 5@4 }.
	self assert: (game isValidPosition: 2@1).
	self deny: (game isValidPosition: 2@2).
	self assert: (game isValidPosition: 3@4).
	self deny: (game isValidPosition: 5@2).
	