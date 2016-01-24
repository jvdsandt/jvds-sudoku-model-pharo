actions
manualMove: aMove

	(self canAdd: aMove)
		ifTrue: [ ^self newManualMove: aMove ].
		
	^self