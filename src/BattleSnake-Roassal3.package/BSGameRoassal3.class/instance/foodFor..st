building
foodFor: point
	^ RSEllipse new
		size: 12.3;
		color: Color red;
		position: point * (size + padding);
		yourself