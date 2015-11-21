initialization
initializeFrom: aGameBase withMove: aCellValueAssoc withInvalid: invalidCellsColl

	game := aGameBase game.
	previousPlay := aGameBase.
	lastMove := aCellValueAssoc.
	
	solvedCells := previousPlay solvedCells copy
		add: aCellValueAssoc;
		yourself.
	invalidCells := invalidCellsColl.
