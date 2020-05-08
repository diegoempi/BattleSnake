public
handleRequest: request
	| startResponse moveResponse pingResponse |
	startResponse := JSONCreator color: '#ff0101' headType: 'beluga' tailType: 'block-bum'.
	moveResponse := JSONCreator move: 'left'.
	pingResponse := JSONCreator ping: 'pong'.
	request uri path = #start
		ifTrue: [ ^ ZnResponse ok: (ZnEntity json: startResponse) ].
	request uri path = #move
		ifTrue: [ ^ ZnResponse ok: (ZnEntity json: moveResponse) ].
	request uri path = #ping
		ifTrue: [ ^ ZnResponse ok: (ZnEntity json: pingResponse) ].
	^ ZnResponse notFound: request uri.