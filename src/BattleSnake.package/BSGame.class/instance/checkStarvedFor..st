collisions
checkStarvedFor: aPlayer
	aPlayer health <= 0
		ifTrue: [ aPlayer die: 'Starved' ].