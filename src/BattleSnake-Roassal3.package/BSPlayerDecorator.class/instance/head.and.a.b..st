accessing - attributes
head: h and: t a: a b: b
	^ (h = a and: [t = b]) or: [ h = b and: [ t = a ] ]