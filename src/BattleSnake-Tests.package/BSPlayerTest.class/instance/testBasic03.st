tests
testBasic03

	| p |
	p := BSRandomPlayer new.
	p goDown.
	self assert: p position equals: 1 @ 2.
	self assert: p length equals: 1.
	
	self assert: p path equals: { 1 @ 2 }.
	p increaseLength.
	self assert: p path equals: { 1@2 . 1@2 }.
	
	p goDown.
	self assert: p path equals: { 1@2 . 1@3 }.
	
	p goDown.
	self assert: p path equals: { 1@3 . 1@4 }.
	
	p increaseLength.
	self assert: p path equals: { 1@3 . 1@4 . 1@4 }.