initialization
copyWithInvalidCell: aCellWithValue

	^self class newFrom: previousPlay withMove: lastMove withInvalid: (invalidCells copyWith: aCellWithValue)