building
snakeFor: aPlayer
	| body | 
	body := aPlayer body collectWithIndex: [ :point :index |
		(self snakePartFor: aPlayer index: index)
			translateBy: point * (size + padding);
			color: (snakeColor scale: aPlayer);
			yourself
		 ].
	^ RSComposite new
		children: body;
		yourself