undo-undo
go
	| action |
	action := { #goDown . #goUp . #goLeft . #goRight } atRandom.
	self perform: action