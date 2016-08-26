actions
newMove: aCellWithValue

	^self class newFrom: self withMove: aCellWithValue guessed: false ifInvalid: [ self goBackAndMove ]