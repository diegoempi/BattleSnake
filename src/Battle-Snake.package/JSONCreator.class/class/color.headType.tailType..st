utilities
color: aColor headType: aHeadType tailType: aTailType
	| startResponse startResponseJSON |
	startResponse := Dictionary new.
	startResponse at: 'color' put: aColor.
	startResponse at: 'headType' put: aHeadType.
	startResponse at: 'tailType' put: aTailType.
	startResponseJSON := (NeoJSONWriter toString: startResponse).
	^ startResponseJSON