building
snakeFor: aPlayer
	| body color | 
	color := snakeColor scale: aPlayer.
	aPlayer isDead ifTrue: [ color := color alpha: 0.2 ].
	body := aPlayer body collectWithIndex: [ :point :index |
		(self snakePartFor: aPlayer index: index)
			translateBy: point * (size + padding);
			color: color;
			yourself
		 ].
	^ RSComposite new
		children: body;
		yourself