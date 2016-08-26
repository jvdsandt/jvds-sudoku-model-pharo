actions
newGuessMove: aCellWithValue

	^self class newFrom: self withMove: aCellWithValue guessed: true ifInvalid: [ self goBackAndMove ]