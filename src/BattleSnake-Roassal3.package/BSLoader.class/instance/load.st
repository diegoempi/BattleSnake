public
load
	self resetGame.
	self players do: [ :p |
		
		renderer game addPlayer: (BSPlayerDecorator new player: p).
		p body: self createBody.
		 ].
	