public
createBody
	| body |
	body := OrderedCollection new.
	1 to: playerSize do: [:index |
		body add: 5@(4+index)].
	^body
	