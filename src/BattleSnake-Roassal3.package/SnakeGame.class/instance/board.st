as yet unclassified
board
	<script: 'self new board open'>
	| canvas color |
	canvas := RSCanvas new.
	"canvas color: (Color r: 74 g: 1 b: 152 range: 255)."
	color := Color colorFrom: '#D6D5EA'.
	11*11 timesRepeat: [ 
		canvas add: (RSBox new
			color: color;
			size: 20) ].
	RSGridLayout new
		lineItemsCount: 11;
		gapSize: 4;
		on: canvas nodes.
	canvas when: RSExtentChangedEvent do: [ canvas zoomToFit ].
	^ canvas