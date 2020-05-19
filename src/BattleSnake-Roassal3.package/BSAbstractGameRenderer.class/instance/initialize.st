initialization
initialize
	super initialize.
	
	canvas := RSCanvas new.
	self
		loader: BSLoader new;
		game: BSGame new.
	canvas announcer when: RSMouseClick send: #toggle to: self.
	logEvents := false.