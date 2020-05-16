initialization
initialize
	super initialize.
	currentMove := #up.
	snakeHead := RSSVGPath new
		svgPath: BSSnakeHead atRandom.
	snakeTail := RSSVGPath new
		svgPath: BSSnakeTail atRandom.
	snakeCurve := RSSVGPath new
		svgPath: 'M0,20 h60 a60,60 0 0 1 60,60 v60 h-100 v-20 h-20 z';
		yourself