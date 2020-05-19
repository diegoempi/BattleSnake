as yet unclassified
loggerAsString
	^ String streamContents: [:s | 
		s << 'Turn: '.
		game turn printOn: s.
		s cr. 
		game allPlayers do: [ :player |
			player printOn: s. 
			] separatedBy: [ s cr. ] ].