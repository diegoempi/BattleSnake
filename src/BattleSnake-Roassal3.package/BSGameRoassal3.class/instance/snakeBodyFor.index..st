building
snakeBodyFor: player index: index
	| body p1 p2 extent bigSize |
	body := player body.

	p1 := body at: index.
	p2 := body at: index - 1.
	bigSize := size + (padding * 2)+1.
	extent := p1 y = p2 y
		ifTrue: [ bigSize @ size]
		ifFalse: [ size @ bigSize ].
	^ RSBox new
		extent: extent;
		yourself
	