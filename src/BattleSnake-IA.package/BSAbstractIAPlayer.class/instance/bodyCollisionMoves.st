as yet unclassified
bodyCollisionMoves
	| bodyCollisionMoves |
	bodyCollisionMoves := OrderedCollection new.
	self badBodyPoints do: [ :p |
		(p - self head) = (1@0)
			ifTrue: [bodyCollisionMoves add: #right].
		(p - self head) = (-1@0)
			ifTrue: [bodyCollisionMoves add: #left].
		(p - self head) = (0@1)
			ifTrue: [bodyCollisionMoves add: #down].
		(p - self head) = (0@ -1)
			ifTrue: [bodyCollisionMoves add: #up].
		].
	^ bodyCollisionMoves asArray.