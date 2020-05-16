as yet unclassified
differenceBetween: array1 and: array2
	| oArray1 oArray2 |
	oArray1 := array1 asOrderedCollection.
	oArray2 := array2 asOrderedCollection.
	oArray2 do: [ :each |
		(oArray1 includes: each)
			ifTrue: [ oArray1 remove: each ] ].
	^ oArray1 asArray.