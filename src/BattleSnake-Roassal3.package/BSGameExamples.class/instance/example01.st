examples - basic
example01
	<script: 'self new example01'>
	| renderer |
	renderer := BSSimpleGame new.
	renderer loader playerSize: 5.
	renderer open.