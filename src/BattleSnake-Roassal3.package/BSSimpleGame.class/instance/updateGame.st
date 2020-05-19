update cycle
updateGame
	| mapContent board |
	canvas shapes copy do: #remove.
	super updateGame.
	board := RSGroup new.
	mapContent := game map content.
	mapContent do: [ :each|
		board add: (self shapeFor: each) ].
	
	RSGridLayout new
		lineItemsCount: mapContent numberOfRows;
		on: board.
	canvas add: board asShape.
	RSHorizontalLineLayout new
		on: canvas shapes reverse.
	game runOnce.
	"canvas camera zoomToFit: canvas extent rectangle:"  
	canvas signalUpdate.