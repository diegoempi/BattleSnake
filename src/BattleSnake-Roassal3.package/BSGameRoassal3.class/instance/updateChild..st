update cycle
updateChild: s
	| healthScale player box children name cause label |
	healthScale := NSScale linear 
		domain: { 0. game maxHealth };
		range: { 0. 150 }.
	player := s model.
	children := s children.
	name := children first.
	box := children second.
	cause := children third.
	label := children fourth.

	label text: player size asString.
	player isDead ifTrue: [ 
		cause text: player eliminatedCause.
		self deadAnimation: player box: box name: name.
	] ifFalse: [ 
		box width: (healthScale scale: player health).
	].
	
	RSVerticalLineLayout new
		gapSize: 0;
		on: s children allButLast.
	s children last
		text: player size asString;
		position: 150@ name position y.
	s adjustToChildren.
	