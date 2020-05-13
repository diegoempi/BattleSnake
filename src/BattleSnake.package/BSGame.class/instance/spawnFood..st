public
spawnFood: aNumber
	| unocuppiedPoints newFood |
	aNumber timesRepeat: [ 
		unocuppiedPoints := self unocuppiedPoints.
		unocuppiedPoints ifNotEmpty: [ 
			newFood := unocuppiedPoints atRandom.
			foods add: newFood. ]
		 ]