testing
canAdd: aPointValueAssoc toGame: aGame

	(self includes: aPointValueAssoc key)
		ifFalse: [ ^true ].
		
	self cellsDo: [ :eachCell |
		aGame valueAt: eachCell ifKnown: [ :value |
			aPointValueAssoc value = value
				ifTrue: [ ^false ] ] ].

	^true