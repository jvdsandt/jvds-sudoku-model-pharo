testing
isInExtraBox: aCell

	^boxes anySatisfy: [ :each |
		each isExtraBox and: [ each includes: aCell ] ]