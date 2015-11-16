initialization
initializeFrom: aGameBase withMove: aCellValueAssoc

	game := aGameBase game.
	solvedCells := aGameBase solvedCells copy
		add: aCellValueAssoc;
		yourself.
