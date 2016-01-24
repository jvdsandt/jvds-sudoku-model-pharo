actions-internal
newGuessMove: aCellWithValue

	^SudokuAutoGameGuessedPlay newFrom: self withMove: aCellWithValue withInvalid: invalidCells 