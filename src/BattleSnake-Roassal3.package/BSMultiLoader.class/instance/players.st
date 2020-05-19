accessing
players
	^ players collect: [ :player |
		player copy 
		 ]