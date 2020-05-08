baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ ||
			"our dependencies"
			"https://github.com/diegoempi/battleSnake-server"
			
			spec 
				baseline: 'Roassal3' 
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ].
			
			"The packages to use, but not load"
			spec
				package: #'BattleSnake';
				package: #'BattleSnake-Tests';
				package: #'BattleSnake-Roassal3' with: [ spec requires: #('Roassal3') ].

			"packages to load"
			spec
				group: 'default' with: #('BattleSnake' 'BattleSnake-Tests' 'BattleSnake-Roassal3') ].

		
	






