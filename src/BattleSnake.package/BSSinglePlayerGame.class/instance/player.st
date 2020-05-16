accessing
player
	players ifEmpty: [ ^ nil ].
	^ players first