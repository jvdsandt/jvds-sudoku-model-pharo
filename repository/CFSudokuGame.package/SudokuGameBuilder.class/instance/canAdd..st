testing
canAdd: aPointValueAssoc

	^self board boxes allSatisfy: [ :each | each canAdd: aPointValueAssoc to: fixedCells ]