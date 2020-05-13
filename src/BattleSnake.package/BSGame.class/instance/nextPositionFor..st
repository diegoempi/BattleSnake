accessing - computed
nextPositionFor: aPlayer 
	| move |
	move := aPlayer nextMove.
	^ aPlayer head + (map getMoveAsPoint: move).