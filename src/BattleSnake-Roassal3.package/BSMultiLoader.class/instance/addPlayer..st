adding
addPlayer: aPlayer
	players add: aPlayer.
	aPlayer name: 'Player ' , players size asString.
	