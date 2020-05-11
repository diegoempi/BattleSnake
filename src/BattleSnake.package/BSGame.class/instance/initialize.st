initialization
initialize
	players := OrderedCollection new.
	playerTails := Dictionary new.
	map := BSMap new.
	map game: self.
	
	foods := OrderedCollection new