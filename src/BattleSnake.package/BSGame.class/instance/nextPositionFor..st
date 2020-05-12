private
nextPositionFor: aPlayer 
	| move |
	move := aPlayer nextMove.
	^ aPlayer head + (map getMoveAsPoint: move).