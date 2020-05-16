as yet unclassified
badBodyPoints
	| badBodyPoints |
	badBodyPoints := OrderedCollection new.
	self body do: [ :each |
		((self distanceBetween: each and: self head) = 1)
			ifTrue: [ badBodyPoints add: each ] ].
	^ badBodyPoints asArray.