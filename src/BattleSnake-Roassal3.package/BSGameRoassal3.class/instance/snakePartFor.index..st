building
snakePartFor: player index: index
	index = 1 ifTrue: [ ^ self snakeHeadFor: player ].
	index = player body size ifTrue: [ ^ self snakeTailFor: player ].
	^ (player isACurveAt: index)
		ifTrue: [ self snakeCurveFor: player index: index ]
		ifFalse: [ self snakeBodyFor: player index: index ]
	