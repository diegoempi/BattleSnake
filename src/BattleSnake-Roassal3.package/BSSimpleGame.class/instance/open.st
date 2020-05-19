opening
open
	super open.
	self updateGame.
	canvas zoomToFit.
	logEvents ifTrue: [ canvas when: RSMouseClick do: [ loader load ]. ]
	