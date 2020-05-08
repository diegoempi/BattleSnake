running
run
	ZnServer stopDefault.
	ZnServer startDefaultOn: 8080.
	(ZnServer default delegate)
		map: #move to: SnakeServer new;
		map: #ping to: SnakeServer new;
		map: #start to: SnakeServer new.