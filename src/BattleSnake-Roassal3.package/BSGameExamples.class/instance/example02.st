examples - basic
example02
	<script: 'self new example02'>
	| renderer |
	renderer := BSSimpleGame new.
	renderer loader: BSRandomLoader new.
	renderer open.