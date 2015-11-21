actions
doNextMove

	| openCellsWithValues cell values |
	
	openCellsWithValues := self findOpenCellValuesIfEmpty: [ ^self goBackAndMove ].
	openCellsWithValues isEmpty
		ifTrue: [ ^self goBackAndMove ].
		
	values := nil.
	openCellsWithValues keysAndValuesDo: [ :eachCell :eachValues |
		(values isNil or: [ values size > eachValues size ])
			ifTrue: [ 
				cell := eachCell.
				values := eachValues ] ].
		
	values size = 1
		ifTrue: [ ^self newMove: cell -> values first ].
		
	self boxes do: [ :eachBox |
		(eachBox findMoveWith: openCellsWithValues)
			ifNotNil: [ :cellWithValue |
				^self newMove: cellWithValue ] ].
				
	^self newGuessMove: (self takeGuessFrom: openCellsWithValues)