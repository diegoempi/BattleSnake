update cycle
feedIfNecessary: aPlayer
	| body |
	aPlayer isDead ifTrue: [ ^ self ].
	aPlayer hasFoundFood ifFalse: [ ^ self ].
	foods remove: aPlayer head.
	body := aPlayer body asOrderedCollection.
	body addLast: (playerTails at: aPlayer).
	aPlayer health: self maxHealth.
	aPlayer body: body asArray.
	
	


	