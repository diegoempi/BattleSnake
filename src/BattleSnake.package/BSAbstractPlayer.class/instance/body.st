accessing
body
	body ifNil: [ body := { 1@1 } ].
	body ifEmpty: [ body := { 1@1 } ].
	^ body