adding
addPlayer: aPlayer
	aPlayer game: self.
	players add: aPlayer.
	aPlayer health: self maxHealth.
	aPlayer name: 'snake', players size asString.
	^ aPlayer