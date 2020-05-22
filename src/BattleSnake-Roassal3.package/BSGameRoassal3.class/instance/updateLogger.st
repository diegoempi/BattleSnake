update cycle
updateLogger
	logger ifNil: [ 
		logger := self createLogger.
		canvas add: logger ].
	logger children first text: 'Turn: ', game turn asString.
	logger children allButFirst do: [ :s | self updateChild: s ].
	
	RSVerticalLineLayout new
		gapSize: 0;
		alignCenter;
		on: logger children.
	logger adjustToChildren.
	RSLocation new
		outer;
		right;
		offset: 30 @ -10;
		move: logger on: canvas shapes first.
	game hasEnded ifTrue: [ logger := nil ].