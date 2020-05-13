opening
updateGame
	| mapContent |
	game players ifEmpty: [ 
		"game reset."
		"TODO create a game reset"
		game := BSGame new.
		game foods: {  }.
		(game addHumanPlayer) body: { 3@3 }.
		
		 ].
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
	