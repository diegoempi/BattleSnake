update cycle
updateGame
	logEvents
		ifTrue: [ self updateLogger ].
	self restartGameIfNecessary