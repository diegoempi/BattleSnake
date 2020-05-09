accessing
named: aString
	| table |
	table := self table.
	^ table at: aString
		ifAbsent: [ table 
			at: table keys asArray first
			ifAbsent: [ nil ] ].