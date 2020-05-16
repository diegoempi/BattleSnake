as yet unclassified
closestFood
	| closestFood foods closestDistance distance |
	foods := game foods.
	closestDistance := SmallInteger maxVal.
	body do: [ :b | 
		foods do: [ :f | 
			distance := self distanceBetween: b and: f.
			distance < closestDistance
				ifTrue: [ closestDistance := distance.
					closestFood := f. ]
			] ].
	^ closestFood