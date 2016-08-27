actions-internal
newGuessMove: aCellWithValue

	^SudokuAutoGame newFrom: self 
			withMove: aCellWithValue 
			guessed: true 
			ifInvalid: [ self goBackAndMove ]