as yet unclassified
updateLogger
	| string shapeBuilder shape |
	string := self loggerAsString.
	
	shapeBuilder := RSMultilineLabelBuilder new.
	shape := shapeBuilder shapeFor: string.
	shape scaleBy: 2.
	canvas add: shape.