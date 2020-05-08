as yet unclassified
exampleRandom

	| game p |
	game := BSGame new.
	p := BSRandomPlayer new.
	game addPlayer: p.

	p increaseLength.
	game runOnce.
	game map asString 