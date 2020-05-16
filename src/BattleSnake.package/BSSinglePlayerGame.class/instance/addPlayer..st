testing
addPlayer: aPlayer
	self 
		assert: players size < 1
		description: 'Can not have more than one player'.
	^ super addPlayer: aPlayer.