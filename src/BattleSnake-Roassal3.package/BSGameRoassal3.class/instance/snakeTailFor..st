building
snakeTailFor: player
	
	^ player snakeTail copy
		translateTo: 0@0;
		rotateByDegrees: player tailRotation;
		scaleBy: 0.2;
		yourself