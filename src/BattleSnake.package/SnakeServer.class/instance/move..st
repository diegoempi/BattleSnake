accessing
move: request
	request uri path = #move
		ifFalse: [ ^ ZnResponse notFound: request uri ].
	^ ZnResponse ok: (ZnEntity text: 'hola move' )