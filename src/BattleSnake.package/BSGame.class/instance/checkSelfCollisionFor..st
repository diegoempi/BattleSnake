collisions
checkSelfCollisionFor: aPlayer 
	| head |
	head := aPlayer head.
	(aPlayer body allButFirst includes: head)
		ifTrue: [ aPlayer die: 'Collided with itself' ].