accessing - attributes
curveScaleFor: index 
	| body h t s p ns bot top left right |
	body := self body.
	h := body at: index -1.
	p := body at: index.
	t := body at: index + 1.
	s := 0.2.
	ns := s negated.
	bot := 0@1+p.
	top := 0@ -1+p.
	left := -1@0+p.
	right := 1@0+p.
	
	(self head: h and: t a: bot b: left)
		ifTrue: [ ^ s@s ].
	(self head: h and: t a: left b: top)
		ifTrue: [ ^ s @ ns ].
	(self head: h and: t a: top b: right)
		ifTrue: [ ^ ns@ns ].
	^ ns @ s
