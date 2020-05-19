update cycle
updateGame
	logEvents ifTrue: [ self updateLogger ].

	game hasEnded ifFalse: [ ^ self ].
	
	logEvents ifTrue: [ ^ self toggle ].
	loader load