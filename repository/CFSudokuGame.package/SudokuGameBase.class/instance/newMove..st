actions-internal
newMove: aCellWithValue

	^SudokuAutoGame newFrom: self 
			withMove: aCellWithValue 
			guessed: false 
			ifInvalid: [ self goBackAndMove ]