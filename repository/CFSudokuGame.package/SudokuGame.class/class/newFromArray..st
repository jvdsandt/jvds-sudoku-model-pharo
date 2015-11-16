instance creation
newFromArray: anArrayOfArrays

	^SudokuGameBuilder new
		initStandardMaxX: anArrayOfArrays first size maxY: anArrayOfArrays size;
		fixWithArray: anArrayOfArrays;
		newGame
