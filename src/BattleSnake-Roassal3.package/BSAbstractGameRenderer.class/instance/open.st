opening
open
	loader load.
	animation := (canvas newAnimation
		duration: self stepDuration;
		repeat).
	animation announcer 
		when: RSAnimationLoopEvent send: #updateGame to: self.
	canvas announcer 
		when: RSExtentChangedEvent send: #zoomToFit to: canvas;
		when: RSKeyDown send: #processKeyDown: to: self.
		
	canvas open
		extent: self windowExtent;
		setLabel: self title.
	logEvents ifTrue: [ canvas when: RSMouseClick do: [ loader load ]. ].
	self updateGame.
	canvas zoomToFit.