testing
isValidPoint: aPoint 
	^ (aPoint x between: 1 and: extent x) and: [ aPoint y between: 1 and: extent y ]