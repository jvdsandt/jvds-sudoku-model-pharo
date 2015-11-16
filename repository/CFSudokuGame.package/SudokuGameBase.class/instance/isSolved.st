testing
isSolved

	^self board relevantCells allSatisfy: [ :each | self isKnown: each ]
		