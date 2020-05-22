building
createLogger
	| group players |
	group := RSGroup new.
	group add: self turnShape.
	players := (game allPlayers collect: [ :p |
		self loggerBoxFor: p ]) as: RSGroup.
	players @ (RSHighlightable new highlightBorder: RSBorder new).
	group addAll: players.
	RSVerticalLineLayout new
		gapSize: 0;
		alignCenter;
		on: group.
	
	
	RSLocation new
		outer;
		right;
		offset: 30 @ -10;
		move: group on: canvas shapes first.
	^ group asShape.
	