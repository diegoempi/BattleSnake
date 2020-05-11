public
getMoveAsPoint: aString 
	aString == #up ifTrue: [ ^ 0@ -1 ].
	aString == #left ifTrue: [ ^ -1@0 ].
	aString == #right ifTrue: [ ^ 1@0 ].
	aString == #down ifTrue: [ ^ 0@1 ].
	self error: 'invalid argument'