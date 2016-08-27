initialization
initializeFrom: aGameBase withMove: aCellValueAssoc

	game := aGameBase game.
	previousPlay := aGameBase.
	lastMove := aCellValueAssoc.
	
	solvedCells := previousPlay solvedCells copy
		add: aCellValueAssoc;
		yourself.
