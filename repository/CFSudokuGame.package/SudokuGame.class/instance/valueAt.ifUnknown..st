accessing
valueAt: aCell ifUnknown: aBlock 

	^fixedCells at: aCell ifAbsent: aBlock