opening
open
	loader load.
	(canvas newAnimation
		duration: self stepDuration;
		repeat) announcer 
			when: RSAnimationLoopEvent send: #updateGame to: self.
	canvas announcer 
		when: RSExtentChangedEvent send: #zoomToFit to: canvas;
		when: RSKeyDown send: #processKeyDown: to: self.
		
	canvas open
		extent: self windowExtent;
		setLabel: self title.