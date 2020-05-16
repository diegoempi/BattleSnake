removing
testRemoveFromArray
	| array player |
	player := BSIAPlayer2 new.
	array := #(up left right down).
	array := player differenceBetween: array and: #(right left).
	
	self assert: array equals: #(up down).

	array := #(up left right).
	array := player differenceBetween: array and: #(left down).
	
	self assert: array equals: #(up right).
	
	