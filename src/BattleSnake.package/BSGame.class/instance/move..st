private
move: aPlayer 
	| point body |
	"we save the tail information"
	playerTails at: aPlayer put: aPlayer tail.
	aPlayer decreaseHealth.
	
	point := self nextPositionFor: aPlayer.
	
	body := aPlayer body asOrderedCollection.
	body addFirst: point.
	body removeLast.
	
	aPlayer body: body asArray.
	
	

