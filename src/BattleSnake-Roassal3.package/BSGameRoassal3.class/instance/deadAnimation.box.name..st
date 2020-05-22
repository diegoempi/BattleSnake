update cycle
deadAnimation: player box: box name: aShape
	(canvas hasProperty: player) ifTrue: [ ^ self ].
	canvas propertyAt: player put: ( canvas newAnimation
		from: box extent;
		to: 5@5;
		duration: 500 milliSeconds;
		onStepDo: [ :t |
			box extent: t;
				position: aShape encompassingRectangle bottomLeft + (t / 2).
			];
		yourself).