accessing
body
	body ifNil: [ self body: { 1@1 } ].
	body ifEmpty: [ self body: { 1@1 } ].
	^ body