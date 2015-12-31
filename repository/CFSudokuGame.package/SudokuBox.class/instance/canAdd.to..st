testing
canAdd: aPointValueAssoc to: aFixedCells

	(self includes: aPointValueAssoc key)
		ifFalse: [ ^true ].
		
	aFixedCells keysAndValuesDo: [ :eachPoint :eachValue |
		((self includes: eachPoint) and: [ eachValue = aPointValueAssoc value ])
			ifTrue: [ ^false ] ].
		
	^true