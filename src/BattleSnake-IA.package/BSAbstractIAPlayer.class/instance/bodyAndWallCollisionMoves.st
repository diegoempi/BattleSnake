as yet unclassified
bodyAndWallCollisionMoves
	| bodyAndWallCollisionMoves |
	bodyAndWallCollisionMoves := OrderedCollection new.
	self badBodyPoints do: [ :p |
		(p - self head) = (1@0)
			ifTrue: [bodyAndWallCollisionMoves add: #right].
		(p - self head) = (-1@0)
			ifTrue: [bodyAndWallCollisionMoves add: #left].
		(p - self head) = (0@1)
			ifTrue: [bodyAndWallCollisionMoves add: #down].
		(p - self head) = (0@ -1)
			ifTrue: [bodyAndWallCollisionMoves add: #up].
		].
	self head x = 1
		ifTrue: [ bodyAndWallCollisionMoves add: #left ].
	self head x = (game map extent x)
		ifTrue: [ bodyAndWallCollisionMoves add: #right ].
	self head y = 1
		ifTrue: [ bodyAndWallCollisionMoves add: #up ].
	self head y = (game map extent y)
		ifTrue: [ bodyAndWallCollisionMoves add: #down ].
		
	^ bodyAndWallCollisionMoves asArray.