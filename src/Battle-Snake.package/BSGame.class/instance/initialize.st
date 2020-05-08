initialization
initialize
	players := OrderedCollection new.
	map := BSMap new.
	map game: self.
	
	foods := OrderedCollection new