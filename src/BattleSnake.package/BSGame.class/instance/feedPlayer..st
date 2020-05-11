private
feedPlayer: aPlayer
	| tailPoint body |
	tailPoint := self lastTailFor: aPlayer.
	body := aPlayer body asOrderedCollection 
		addLast: tailPoint;
		asArray.
	aPlayer body: body.
	aPlayer health: self maxHealth.
	