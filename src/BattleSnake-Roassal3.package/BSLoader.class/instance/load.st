public
load
	render game: render game class new.
	self players do: [ :p |
		
		render game addPlayer: p
		 ].
	