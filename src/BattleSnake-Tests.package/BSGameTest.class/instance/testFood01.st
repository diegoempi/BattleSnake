tests - food
testFood01
	| game player |
	game := BSGame new.
	self assert: game foods equals: {}.
	game foods: { 1@1. 5@5. 8@8 }.
	self assert: game foods equals: { 1@1. 5@5. 8@8 }.
	player := game addHumanPlayer.
	player body: { 1@1 }.
	self assert: (player hasFoundFood).
	player body: { 2@2. 2@3. 2@4}.
	self deny: (player hasFoundFood).