collisions
checkFor: aPlayer
	aPlayer isDead ifTrue: [ ^ self ].
	"starved check"
	self checkStarvedFor: aPlayer.
	aPlayer isDead ifTrue: [ ^ self ].
	"wall check"
	self checkWallCollisionFor: aPlayer.
	aPlayer isDead ifTrue: [ ^ self ].
	players do: [ :p2 |
		self checkCollisionFor: aPlayer and: p2 ]