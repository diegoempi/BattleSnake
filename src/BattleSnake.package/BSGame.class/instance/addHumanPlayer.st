adding
addHumanPlayer
	^ self addPlayer: (BSHumanPlayer new
		health: self maxHealth;
		yourself)