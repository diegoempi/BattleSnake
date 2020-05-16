testing
isACurveAt: anInteger 
	| body p1 p2 p3 |
	body := self body.
	p1 := body at: anInteger - 1.
	p2 := body at: anInteger .
	p3 := body at: anInteger + 1.
	^ ((p1 x = p2 x and: [ p2 x = p3 x ]) or: [ p1 y = p2 y and: [ p2 y = p3 y ] ] ) not