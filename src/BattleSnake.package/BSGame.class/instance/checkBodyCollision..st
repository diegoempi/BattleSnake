collisions
checkBodyCollision: aPlayer
	| head |
	head := aPlayer head.
	players do: [ :other | 
		other == aPlayer ifFalse: [ 
			(other body includes: head)
				ifTrue: [ aPlayer die ] ] ]