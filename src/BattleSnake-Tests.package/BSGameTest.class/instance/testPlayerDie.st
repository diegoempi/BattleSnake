tests
testPlayerDie
	| game player |
	game := BSGame new.
	player := game addHumanPlayer.
	self deny: player isDied.
	"player goes up"
	self assert: game map asString equals:
'(1 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 )'.
	game runOnce.
	self assert: player isDied.
	self assert: player dieReason equals: 'Moved out of bounds'
	