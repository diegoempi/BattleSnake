accessing
unocuppiedPoints
	| unoccupiedPoints |
	unoccupiedPoints := OrderedCollection new.
	1 to: map extent x do: [ :x |
		1 to: map extent y do: [ :y |
			(self isUnoccupiedPoint: x@y)
				ifTrue: [ unoccupiedPoints add: x@y ] ] ].
	^ unoccupiedPoints.