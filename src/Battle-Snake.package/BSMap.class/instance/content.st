initialization
content
	"
	  0 : empty
	  F : food
	  1 : snake
	"
	| r |
	r := Array2D rows: self size columns: self size element: 0.
	game players do: [ :p |
		p path do: [ :position |
			r at: position y at: position x put: 1 ]
	].
	game foods do: [ :f |
		r at: f y at: f x put: $F ].
	^ r