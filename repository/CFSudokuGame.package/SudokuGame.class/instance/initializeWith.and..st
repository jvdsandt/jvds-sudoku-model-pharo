initialization
initializeWith: aBoard and: aFixedCells

	board := aBoard.
	fixedCells := aFixedCells.
	invalidCells := #().
	numberOfCellsToSolve := aBoard relevantCells size - fixedCells size.