update cycle
restartGameIfNecessary
	game hasEnded
		ifFalse: [ ^ self ].
	logEvents
		ifTrue: [ ^ self toggle ].
	1traceCr.
	loader load