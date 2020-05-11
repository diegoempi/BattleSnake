testing
isValidPosition: aPoint 
	| extent |
	extent := map extent.
	(aPoint x between: 1 and: extent x) ifFalse: [ ^ false ].
	(aPoint y between: 1 and: extent y) ifFalse: [ ^ false ].
	players do: [ :p | 
		(p body includes: aPoint) ifTrue: [ ^ false ] ].
	
	^ true.