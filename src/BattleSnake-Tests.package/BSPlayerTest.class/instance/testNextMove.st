tests
testNextMove
	"for human player"
	self assert: player nextMove equals: #up.
	player nextMove: #down.
	self assert: player nextMove equals: #down.
	player nextMove: #left.
	self assert: player nextMove equals: #left.
	self assert: player nextMove equals: #left.