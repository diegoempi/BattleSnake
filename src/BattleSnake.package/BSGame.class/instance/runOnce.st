update cycle
runOnce
	"players do: [ :p | p go ]"
	players do: [ :p | self move: p ].
	players do: [ :p | self checkCollisionFor: p. ].
	players := players select: [ :p | p isLive ].
	players do: [ :p | self feedIfNecessary: p ].
	"players do: [ :p | self move: p ]."