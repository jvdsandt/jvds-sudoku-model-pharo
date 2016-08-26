actions
possibleValuesFor: aCell from: aValues in: aGame

	| result |
	
	result := aValues.
	self cellsDo: [ :eachCell |
		eachCell ~= aCell
			ifTrue: [ 
				aGame valueAt: eachCell ifKnown: [ :val | result := result copyWithout: val ] ] ].
	^result