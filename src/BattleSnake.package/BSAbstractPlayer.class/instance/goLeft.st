as yet unclassified
goLeft
	| newPosition |
	newPosition := self position - (1 @ 0).
	path := ((path copyFrom: 2 to: path size), { newPosition }) asOrderedCollection