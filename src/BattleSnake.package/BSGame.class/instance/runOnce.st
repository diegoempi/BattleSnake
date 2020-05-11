public
runOnce
	"players do: [ :p | p go ]"
	players do: [ :p |
		playerTails at: p put: p tail.
		self move: p.
		 ]