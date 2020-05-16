public - hooks
nextMove
	"This IA looks for the closest food avoiding bodyCollisions"
	
	| headToFoodVector horizontalMove verticalMove closestFood randomMoveArray |
	closestFood := self closestFood.
	randomMoveArray := self differenceBetween: #(right left up down) and: self bodyCollisionMoves.  
	closestFood ifNil: [ ^ randomMoveArray atRandom. ].
	headToFoodVector := closestFood - self head.
	horizontalMove := headToFoodVector x > 0
		ifTrue: [ #right ]
		ifFalse: [ #left ].
	verticalMove := headToFoodVector y > 0
		ifTrue: [ #down ]
		ifFalse: [ #up ].
	headToFoodVector x = 0
		ifTrue: [ 
			(self bodyCollisionMoves includes: verticalMove)
				ifTrue: [ ^ #(left right) atRandom. ].
			^ verticalMove ].
	headToFoodVector y = 0
		ifTrue: [ 
			(self bodyCollisionMoves includes: horizontalMove)
				ifTrue: [ ^ #(up down) atRandom. ].
			^ verticalMove ].
	^ (self differenceBetween: {horizontalMove. verticalMove} and: self bodyCollisionMoves) atRandom.