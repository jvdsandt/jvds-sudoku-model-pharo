actions
takeGuessFrom: openCellsWithValues

	| cell values |
	
	values := nil.
	openCellsWithValues keysAndValuesDo: [ :eachCell :eachValues |
		(values isNil or: [ values size > eachValues size ])
			ifTrue: [ 
				cell := eachCell.
				values := eachValues ] ].
		
	^cell -> values first