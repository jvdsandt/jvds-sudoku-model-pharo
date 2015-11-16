accessing
valueAt: aCell ifKnown: aBlock 

	aBlock value: (self valueAt: aCell ifUnknown: [ ^self ])