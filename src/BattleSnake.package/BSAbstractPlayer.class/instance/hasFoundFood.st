testing
hasFoundFood
	game ifNil: [ ^ false ].
	^ game foods includes: self head.