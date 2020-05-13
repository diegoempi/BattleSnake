update cycle
runOnceNoFoodSpawn
	self movePlayers.
	self reducePlayersHealth.
	self eliminateSnakesIfNecessary.
	self feedPlayersIfNecessary.