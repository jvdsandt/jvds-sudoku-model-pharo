initialization
initializeFrom: aGameBase withMove: aCellValueAssoc guessed: aBoolean optionsPerCell: optionDictionary 

	game := aGameBase game.
	previousPlay := aGameBase.
	lastMove := aCellValueAssoc.
	
	solvedCells := previousPlay solvedCells copy
		add: aCellValueAssoc;
		yourself.
		
	optionsPerCell := optionDictionary.
	guessed := aBoolean 