instance creation
newFrom: aGameBase withInvalidMove: aCellValueAssoc ifInvalid: invalidBlock

	| optionsPerCell |
			
	optionsPerCell := aGameBase optionsPerCell copy.
	optionsPerCell 
		at: aCellValueAssoc key 
		put: ((optionsPerCell at: aCellValueAssoc key) copyWithout: aCellValueAssoc value).
	
	^self new initializeFrom: aGameBase 
			withMove: aCellValueAssoc 
			guessed: false
			optionsPerCell: optionsPerCell