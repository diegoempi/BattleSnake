tests
testBasic02

	| p |
	p := BSRandomPlayer new.
	p position: 4 @ 5.
	p increaseLength; increaseLength; increaseLength.
	self assert: p position equals: 4 @ 5.
	self assert: p length equals: 4.
	self assert: p path equals: { 4@5 . 4@5 . 4@5 . 4@5 }.
	
	p goUp.
	self assert: p position equals: 4 @ 4.
	self assert: p length equals: 4.
	self assert: p path equals: { 4@5 . 4@5 . 4@5 . 4@4 }.
	
	p goLeft.
	self assert: p position equals: 3 @ 4.
	self assert: p length equals: 4.
	self assert: p path equals: { 4@5 . 4@5 . 4@4 . 3@4 }.
	
	p goLeft.
	self assert: p position equals: 2 @ 4.
	self assert: p length equals: 4.
	self assert: p path equals: { 4@5 . 4@4 . 3@4 . 2@4 }.

	p goUp.
	self assert: p position equals: 2 @ 3.
	self assert: p length equals: 4.
	self assert: p path equals: { 4@4 . 3@4 . 2@4 . 2@3 }.
	
	p goUp.
	self assert: p position equals: 2 @ 2.
	self assert: p length equals: 4.
	self assert: p path equals: { 3@4 . 2@4 . 2@3 . 2@2 }.
	