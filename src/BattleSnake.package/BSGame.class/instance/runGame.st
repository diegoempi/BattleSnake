as yet unclassified
runGame
	"run Game and returns the winner of the game"
	[self hasEnded] whileFalse: [ 
		self runOnce ].
	self players do: [ :p |
		p isAlive ifTrue: [ ^ p ] 
		 ].