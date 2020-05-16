initialization
initialize
	super initialize.
	self
		loader: BSLoader new;
		game: BSGame new.
	canvas := RSCanvas new.
	