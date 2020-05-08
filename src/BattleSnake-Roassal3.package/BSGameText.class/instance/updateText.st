opening
updateText
	| shapeBuilder |
	shapeBuilder := RSMultilineLabelBuilder new.
	canvas shapes copy do: #remove.
	canvas add: (shapeBuilder shapeFor: game map asString).
	game runOnce.
	canvas signalUpdate.