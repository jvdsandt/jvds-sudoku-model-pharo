actions
newGuessMove: aCellWithValue

	^SudokuGameGuessedPlay newFrom: self withMove: aCellWithValue withInvalid: invalidCells 