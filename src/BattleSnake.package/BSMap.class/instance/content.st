initialization
content
	"
	  0 : empty
	  F : food
	  1 : snake
	"
	| r |
	r := Array2D rows: extent x columns: extent y element: 0.
	game players doWithIndex: [ :p :index |
		p body do: [ :position |
			(self isValidPoint: position)
				ifTrue: [ r at: position y at: position x put: index ]  ]
	].
	game foods do: [ :f |
		(self isValidPoint: f)
			ifTrue: [ r at: f y at: f x put: $F ]  ].
	^ r