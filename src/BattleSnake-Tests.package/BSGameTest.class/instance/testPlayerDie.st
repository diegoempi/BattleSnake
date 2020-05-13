tests
testPlayerDie
	| game player |
	game := BSGame new.
	player := game addHumanPlayer.
	self deny: player isDead.
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
	game runOnceNoFoodSpawn.
	self assert: player isDead.
	self assert: player eliminatedCause equals: 'Moved out of bounds'
	