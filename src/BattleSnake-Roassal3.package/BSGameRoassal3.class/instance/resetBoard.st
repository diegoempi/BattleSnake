public
resetBoard
	| color extent group |
	"canvas color: (Color r: 74 g: 1 b: 152 range: 255)."
	canvas shapes copy do: #remove.
	group := RSGroup new.
	
	color := Color colorFrom: '#D6D5EA'.
	extent := game map extent.
	1 to: extent x do: [ :x |
		1 to: extent y do: [ :y |
			group add: (RSBox new
				position: (x @ y) * (size + padding);
				color: color;
				size: size)
			 ] ].
	
	canvas add: group asShape.