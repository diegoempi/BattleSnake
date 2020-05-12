initialization
initialize
	players := OrderedCollection new.
	diedPlayers := OrderedCollection new.
	playerTails := Dictionary new.
	foods := OrderedCollection new.
	
	map := BSMap new.
	map game: self.