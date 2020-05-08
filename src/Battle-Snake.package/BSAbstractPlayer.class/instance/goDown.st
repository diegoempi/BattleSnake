as yet unclassified
goDown
	| newPosition |
	newPosition := self position + (0 @ 1). 
	path := ((path copyFrom: 2 to: path size), { newPosition }) asOrderedCollection