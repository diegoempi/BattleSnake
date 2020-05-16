opening
shapeFor: each
	| shape |
	each class = Character
		ifTrue: [ shape := RSEllipse new ].
	each isNumber
		ifTrue: [ shape := RSBox new ].
	shape size: 100.
	shape color: (colorsForShape scale: each).
	^ shape