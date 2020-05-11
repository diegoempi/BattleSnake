private
move: aPlayer 
	| point body |
	point := self nextPositionFor: aPlayer.
	point ifNil: [ ^ aPlayer die ].
	
	body := aPlayer body asOrderedCollection.
	body addFirst: point.
	body removeLast.
	aPlayer body: body asArray.
	

