public
resetBoard
	| color extent  |
	"canvas color: (Color r: 74 g: 1 b: 152 range: 255)."
	canvas shapes copy do: #remove.
	
	color := Color colorFrom: '#D6D5EA'.
	extent := game map extent.
	1 to: extent x do: [ :x |
		1 to: extent y do: [ :y |
			canvas add: (RSBox new
				position: (x @ y) * (size + padding);
				color: color;
				size: size)
			 ] ].
	
	^ canvas