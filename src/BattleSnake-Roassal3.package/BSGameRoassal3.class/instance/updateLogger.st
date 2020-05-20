update cycle
updateLogger
	| group |
	logger ifNotNil: [ logger remove ].
	group := RSGroup new.
	group add: self turnShape.
	group addAll: (game allPlayers collect: [ :p |
		self loggerBoxFor: p ]).
	RSVerticalLineLayout on: group.
	logger := group asShape.
	RSLocation new
		outer;
		right;
		offset: 10 @ -10;
		move: logger on: canvas shapes first.
	canvas add: logger.
	