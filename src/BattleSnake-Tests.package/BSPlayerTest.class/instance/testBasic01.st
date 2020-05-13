tests
testBasic01
	player := BSRandomPlayer new.
	
	self assert: player body equals: {1@1}.
	self assert: player id isNil.
	
	self deny: player isDead.
	self assert: player isAlive.
	
	self assert: player head equals: 1@1.
	self assert: player tail equals: 1@1.
	self assert: player length equals: 1.
	player body: { 2@2. 2@3. 2@4 }.
	self assert: player head equals: 2@2.
	self assert: player tail equals: 2@4.
	self assert: player length equals: 3.
	
	