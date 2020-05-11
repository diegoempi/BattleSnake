running
testGetMoveAsPoint
	self assert: (map getMoveAsPoint: #up) equals: 0@ -1.
	self assert: (map getMoveAsPoint: #left) equals: -1@ 0.
	self assert: (map getMoveAsPoint: #right) equals: 1@ 0.
	self assert: (map getMoveAsPoint: #down) equals: 0@ 1.
	self should: [ map getMoveAsPoint: 'Fooo' ] raise: Error.