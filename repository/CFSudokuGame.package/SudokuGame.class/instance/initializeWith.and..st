initialization
initializeWith: aBoard and: aFixedCells

	board := aBoard.
	fixedCells := aFixedCells.
	numberOfCellsToSolve := aBoard relevantCells size - fixedCells size.