accessing
increaseLength
	| newPath |
	path ifNil: [ path := OrderedCollection new: 1 withAll: 1@1. ^ self ].
	newPath := OrderedCollection new: path size + 1.
	newPath addAll: path.
	newPath add: self position.
	path := newPath
