opening
processKeyDown: event
	game players do: [ :player |
		player processKeyDown: event ].