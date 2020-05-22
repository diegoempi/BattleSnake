building
loggerBoxFor: aPlayer
	| group color shape |
	group := RSGroup new.
	group add: (RSLabel new
		text: aPlayer name).
	color := snakeColor scale: aPlayer.
	group add: (RSBox new
		height: 10;
		width: 150;
		color: color;
		cornerRadius: 5
		).
	group add: (RSLabel new
		text: '';
		fontSize: 8).
	group add: (RSLabel new
		text: aPlayer size asString;
		position: 150@group first position y).
	shape := group asShapeFor: aPlayer.
	shape announcer when: RSMouseClick send: #highlightSnake: to: self.
	^ shape