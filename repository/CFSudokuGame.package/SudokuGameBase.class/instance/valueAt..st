accessing
valueAt: aCell

	^self valueAt: aCell ifUnknown: [ 0 ]