opening
updateText
	| mapContent |
	"game hasEnded ifTrue: [ ^ self ]."
	canvas shapes copy do: #remove.
	mapContent := game map content.
	mapContent do: [ :each|
		canvas add: (self shapeFor: each) ].
	
	RSGridLayout new
		lineItemsCount: mapContent numberOfRows;
		on: canvas shapes.
	game runOnce.
	canvas zoomToFit.
	canvas signalUpdate.
	