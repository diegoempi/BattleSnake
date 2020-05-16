building
snakeHeadFor: player
	| scale |
	scale := player currentMove == #left 
		ifTrue: [ 0.2@ -0.2 ] 
		ifFalse: [0.2].
	
	^ player snakeHead copy
		translateTo: 0@0;
		rotateByDegrees: player headRotation;
		scaleBy: scale;
		yourself