examples - basic
example01
	<script: 'self new example01'>
	| renderer |
	renderer := BSSimpleGame new.
	renderer game: BSGame new. 
	renderer loader: BSMultiLoader new.
	renderer loader 
		addPlayer: BSIAPlayer2 new;
		addPlayer: BSIAPlayer3 new.
	renderer logEvents.
	renderer open.