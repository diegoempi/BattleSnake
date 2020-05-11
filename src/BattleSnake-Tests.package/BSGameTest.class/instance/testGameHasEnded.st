tests
testGameHasEnded

	| game |
	game := BSGame new.
	game addHumanPlayer.
	self assert: game hasEnded.
	game addHumanPlayer.
	self deny: game hasEnded.
	
	game players second remove.
	self assert: game hasEnded.