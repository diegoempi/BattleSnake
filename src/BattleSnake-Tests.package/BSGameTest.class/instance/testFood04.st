tests - food
testFood04
	| game player |
	game := BSGame new.
	game foods: { 2@3. 5@5. 8@8 }.
	player := game addHumanPlayer.
	player nextMove: #up.
	player body: { 2@4. 3@4. 4@4}.
	self assert: player health equals: game maxHealth.
	player health: 0.
	self assert: game map asString equals:
'(0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 $F 0 0 0 0 0 0 0 0
0 1 1 1 0 0 0 0 0 0
0 0 0 0 $F 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 $F 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 )'.
	game runOnceNoFoodSpawn.
	self assert: game foods equals: {2@3. 5@5. 8@8 }.
	self assert: player health equals: -1.
	self assert: player body equals: { 2@3. 2@4. 3@4 }.
	self assert: player isDead.
	self assert: game map asString equals:
'(0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 $F 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 $F 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 $F 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 )'.