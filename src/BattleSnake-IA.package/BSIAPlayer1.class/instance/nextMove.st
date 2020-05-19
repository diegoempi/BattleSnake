public - hooks
nextMove
	"This IA just looks for the closest food."
	
	| headToFoodVector horizontalMove verticalMove closestFood |
	closestFood := self closestFood.
	closestFood ifNil: [ ^ #(right left up down) atRandom. ].
	headToFoodVector := closestFood - self head.
	horizontalMove := headToFoodVector x > 0 ifTrue: [ #right ] ifFalse: [ #left ].
	verticalMove := headToFoodVector y > 0 ifTrue: [ #down ] ifFalse: [ #up ].
	headToFoodVector x = 0
		ifTrue: [ ^ verticalMove ].
	headToFoodVector y = 0
		ifTrue: [ ^ horizontalMove ].
	^ {horizontalMove. verticalMove} atRandom.