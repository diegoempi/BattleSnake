accessing - attributes
headRotation
	currentMove == #up ifTrue: [ ^ -90 ].
	currentMove == #down ifTrue: [ ^ 90 ].
	currentMove == #left ifTrue: [ ^ 180 ].
	^ 0
		
	