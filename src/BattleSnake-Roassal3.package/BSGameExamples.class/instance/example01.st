examples
example01
	<script: 'self new example01'>
	| render |
	render := BSSimpleGame new.
	render loader playerSize: 5.
	render open.