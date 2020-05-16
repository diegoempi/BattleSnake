initialization
initialize
	super initialize.
	
	canvas := RSCanvas new.
	self
		loader: BSLoader new;
		game: BSGame new.
	canvas when: RSMouseClick do: [ canvas animations do: #toggle ]