accessing
valueAt: aCell ifUnknown: aBlock 

	^solvedCells at: aCell ifAbsent: [ game valueAt: aCell ifUnknown: aBlock ]