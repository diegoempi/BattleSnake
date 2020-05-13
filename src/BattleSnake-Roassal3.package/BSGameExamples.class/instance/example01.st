as yet unclassified
example01
	<script: 'self new example01'>
	| render player |
	render := BSGameText new.
	player := render game addHumanPlayer.
	player body: { 3@3 }.
	render open.