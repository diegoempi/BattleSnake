private
nextPositionFor: aPlayer 
	| move position |
	move := aPlayer nextMove.
	position := aPlayer head + (map getMoveAsPoint: move).
	^ (self isValidPosition: position)
		ifTrue: [ position ]
		ifFalse: [ nil ].