utilities
move: aMove
	| moveResponse moveResponseJSON |
	moveResponse := Dictionary new.
	moveResponse at: 'move' put: aMove.
	moveResponseJSON := NeoJSONWriter toString: moveResponse.
	^ moveResponseJSON