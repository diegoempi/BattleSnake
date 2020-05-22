public - hooks
nextMove
	"This IA looks for the closest food avoiding bodyCollisions and wallCollisions"
	^ self nextMove: self bodyAndWallCollisionMoves.