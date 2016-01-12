testing
canAdd: aPointValueAssoc

	self valueAt: aPointValueAssoc key ifKnown: [ :value | ^false ].
	
	self boxes do: [ :eachBox |
		(eachBox canAdd: aPointValueAssoc toGame: self)
			ifFalse: [ ^false ] ].
		
	^true
