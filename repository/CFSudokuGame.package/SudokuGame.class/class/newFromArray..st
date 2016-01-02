instance creation
newFromArray: anArrayOfArrays

	| boardBuilder |
	
	boardBuilder := SudokuBoardBuilder new
		initStandardMaxX: anArrayOfArrays first size maxY: anArrayOfArrays size;
		yourself.
		
	^(SudokuGameBuilder withBoard: boardBuilder newBoard)
		fixWithArray: anArrayOfArrays;
		newGame
