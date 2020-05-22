public - hooks
nextMove
	"This IA looks for the closest food avoiding bodyCollisions"
	^ self nextMove: self bodyCollisionMoves.