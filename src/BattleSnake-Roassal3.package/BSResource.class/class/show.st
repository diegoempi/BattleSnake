accessing
show
	| canvas table |
	canvas := RSCanvas new.
	table := self table.
	table keys do: [ :m | | path |
		path := table at: m .
		canvas add: (RSSVGPath new
			svgPath: path;
			color: Color blue translucent;
			yourself).
		 ].
	RSGridLayout on: canvas shapes.
	canvas @ RSCanvasController.
	canvas open.