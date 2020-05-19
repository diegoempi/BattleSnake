*BattleSnake-IA
example06
	<script: 'self new example06'>
	| renderer |
	renderer := BSGameRoassal3 new.
	renderer loader: BSIAPlayer3Loader new.
	renderer open.