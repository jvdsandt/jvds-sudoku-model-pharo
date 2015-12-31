testing
canAdd: aPointValueAssoc

	^boxes allSatisfy: [ :each | each canAdd: aPointValueAssoc to: fixedCells ]