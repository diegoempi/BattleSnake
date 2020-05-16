removing
removeFromArray: anArray.
	self do: [ :each | 
		anArray includes: each
			ifTrue: [  ] ]