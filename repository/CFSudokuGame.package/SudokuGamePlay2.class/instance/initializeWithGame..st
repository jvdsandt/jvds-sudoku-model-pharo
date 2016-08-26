initialization
initializeWithGame: aGame

	game := aGame.
	solvedCells := Dictionary new.
	
	optionsPerCell := aGame optionsPerCell 