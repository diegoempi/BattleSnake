tests
testBasic
	| game |
	game := BSSinglePlayerGame new.
	self assert: game hasEnded.
	game addHumanPlayer.
	self deny: game hasEnded.
	
	self should: [ game addHumanPlayer ] raise: Error.
	game player.
	