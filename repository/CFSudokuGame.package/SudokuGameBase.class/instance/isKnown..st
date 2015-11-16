testing
isKnown: aCell

	^(self valueAt: aCell ifUnknown: [ nil ]) notNil
		