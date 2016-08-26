as yet unclassified
newFrom: aGameBase withMove: aCellValueAssoc guessed: aBoolean ifInvalid: invalidBlock

	| optionsPerCell |
			
	optionsPerCell := aGameBase optionsPerCell copy.
	optionsPerCell removeKey: aCellValueAssoc key.
	
	aGameBase board cellsSharingBoxWith: aCellValueAssoc key
		do: [ :eachCell |
			optionsPerCell at: eachCell ifPresent: [ :values |
				| newValues |
				newValues := values copyWithout: aCellValueAssoc value.
				newValues isEmpty
					ifTrue: [ ^invalidBlock value ].
				optionsPerCell at: eachCell put: newValues ] ].
		
	^self new initializeFrom: aGameBase 
			withMove: aCellValueAssoc 
			guessed: aBoolean
			optionsPerCell: optionsPerCell