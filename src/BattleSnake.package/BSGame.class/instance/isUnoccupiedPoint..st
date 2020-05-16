testing
isUnoccupiedPoint: aPoint
	(foods includes: aPoint) ifTrue: [ ^ false ].
	^ players noneSatisfy: [ :p | p body includes: aPoint ]