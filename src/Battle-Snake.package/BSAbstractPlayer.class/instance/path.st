accessing
path
	path == nil ifTrue: [ path := OrderedCollection new: 1 withAll: 1 @ 1 ].
	^ path asArray