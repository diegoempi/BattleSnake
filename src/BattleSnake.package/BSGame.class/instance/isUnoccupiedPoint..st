testing
isUnoccupiedPoint: aPoint 
	(foods includes: aPoint)
		ifTrue: [ ^ false ].
	(players do: [ :p | 
		(p body includes: aPoint)
			ifTrue: [ ^ false ] ] ).
	^ true
		