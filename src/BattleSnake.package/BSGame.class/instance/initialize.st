initialization
initialize
	players := OrderedCollection new.
	diedPlayers := OrderedCollection new.
	allPlayers := OrderedCollection new.
	playerTails := Dictionary new.
	foods := OrderedCollection new.
	random := Random new.
	turn := 0.
	maxHealth := 100.
	
	map := BSMap new.
	map game: self.