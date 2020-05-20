building
loggerBoxFor: aPlayer
	| group color healthScale |
	group := RSGroup new.
	group add: (RSLabel new
		text: aPlayer name).
	color := snakeColor scale: aPlayer.
	healthScale := NSScale linear 
		domain: { 0. game maxHealth };
		range: { 0. 150 }.
	group add: (RSBox new
		height: 10;
		width: (healthScale scale: aPlayer health);
		color: color;
		cornerRadius: 5
		).
	group add: (RSLabel new
		text: (aPlayer eliminatedCause ifNil: ['']);
		fontSize: 8).
	RSVerticalLineLayout new
		gapSize: 0;
		on: group.
	group add: (RSLabel new
		text: aPlayer size asString;
		position: 150@group first position y).
	^ group asShape.