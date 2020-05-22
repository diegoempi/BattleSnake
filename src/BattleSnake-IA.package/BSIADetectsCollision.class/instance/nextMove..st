accessing
nextMove: aCollisionDetecter
	"This IA looks for the closest avoiding colliions"
	
	| headToFoodVector horizontalMove verticalMove closestFood randomMoveArray possibleMoves |
	closestFood := self closestFood.
	randomMoveArray := self differenceBetween: #(right left up down) and: aCollisionDetecter.
	(randomMoveArray isEmpty) ifTrue: [ ^ #up ].
	closestFood ifNil: [ ^ randomMoveArray atRandom. ].
	headToFoodVector := closestFood - self head.
	horizontalMove := headToFoodVector x > 0 ifTrue: [ #right ] ifFalse: [ #left ].
	verticalMove := headToFoodVector y > 0 ifTrue: [ #down ] ifFalse: [ #up ].
	headToFoodVector x = 0
		ifTrue: [ 
			(self bodyCollisionMoves includes: verticalMove)
				ifTrue: [ ^ randomMoveArray atRandom. ].
			^ verticalMove ].
	headToFoodVector y = 0
		ifTrue: [ 
			(self bodyCollisionMoves includes: horizontalMove)
				ifTrue: [ ^ randomMoveArray atRandom. ].
			^ horizontalMove ].
	possibleMoves := self differenceBetween: {horizontalMove. verticalMove} and: aCollisionDetecter.
	(possibleMoves isEmpty) ifTrue: [ ^ randomMoveArray atRandom. ] ifFalse: [ ^ possibleMoves atRandom. ]