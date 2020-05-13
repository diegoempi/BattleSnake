*BattleSnake-Roassal3
processKeyDown: anEvent
	| keyName |
	keyName := anEvent keyName.
	keyName = #KP_LEFT
		ifTrue: [ self nextMove: #left ].
	keyName = #KP_RIGHT
		ifTrue: [ self nextMove: #right ].
	keyName = #KP_UP
		ifTrue: [ self nextMove: #up ].
	keyName = #KP_DOWN
		ifTrue: [ self nextMove: #down ].
	