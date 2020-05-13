opening
open
	"self updateText."
	(canvas newAnimation
		duration: 200 milliSeconds;
		repeat) announcer 
			when: RSAnimationLoopEvent send: #updateGame to: self.
	canvas announcer 
		when: RSExtentChangedEvent 
		send: #zoomToFit 
		to: canvas.
	canvas open
		extent: 300@500;
		setLabel: 'Game in text'.
	canvas when: RSKeyDown do: [ :event | 
		self processKeyDown: event ].