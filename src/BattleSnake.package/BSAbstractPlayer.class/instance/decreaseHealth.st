public
decreaseHealth
	health := health - 1.
	health < 0 ifTrue: [ self die: #Starved ]