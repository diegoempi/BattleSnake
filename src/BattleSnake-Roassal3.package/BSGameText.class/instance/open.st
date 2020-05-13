opening
open
	self updateText.
	(canvas newAnimation
		duration: 1 second;
		repeat) announcer 
			when: RSAnimationLoopEvent send: #updateText to: self.
	canvas announcer 
		when: RSExtentChangedEvent 
		send: #zoomToFit 
		to: canvas.
	canvas open
		extent: 300@500;
		setLabel: 'Game in text'.
	canvas when: RSKeyDown do: [ :event | 
		self processKeyDown: event ].