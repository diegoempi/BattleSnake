running
testBasic
	map size: 12.
	
	self assert: map extent equals: 12@12.
	map extent: 5@10.
	self assert: map extent equals: 5@10.
	self assert: (map isValidPoint: 1@1).
	self deny: (map isValidPoint: 0@0).
	self deny: (map isValidPoint: 10@10).