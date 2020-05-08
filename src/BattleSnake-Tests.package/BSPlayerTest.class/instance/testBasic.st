tests
testBasic

	| p |
	p := BSRandomPlayer new.
	self assert: p position equals: 1 @ 1.
	self assert: p length equals: 1.
	
	self assert: p path equals: { 1 @ 1 }.
	p increaseLength.
	self assert: p path equals: { 1@1 . 1@1 }.