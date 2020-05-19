examples - basic
example02
	<script: 'self new example02'>
	| renderer |
	renderer := BSGameRoassal3 new.
	renderer game: BSGame new. 
	renderer loader: BSMultiLoader new.
	renderer loader 
		addPlayer: BSIAPlayer2 new;
		addPlayer: BSIAPlayer3 new.
	renderer open.