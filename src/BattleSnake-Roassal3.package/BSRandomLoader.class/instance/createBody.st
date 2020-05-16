public
createBody
	| body position |
	body := OrderedCollection new.
	position := renderer game unocuppiedPoints atRandom.
	1 to: playerSize do: [:index |
		body add: position].
	^body
	