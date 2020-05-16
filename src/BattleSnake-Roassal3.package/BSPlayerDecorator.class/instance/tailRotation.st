accessing - attributes
tailRotation
	| body tail preTail |
	body := self body.
	preTail := body at: body size - 1.
	tail := self tail.
	
	tail x < preTail x ifTrue: [ ^ -180 ].
	tail y < preTail y ifTrue: [ ^ -90 ].
	tail y > preTail y ifTrue: [ ^ 90 ].
	^ 0
		
	