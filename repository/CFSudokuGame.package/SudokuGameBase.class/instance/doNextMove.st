actions
doNextMove

	| openCellsWithValues cell values |
	
	openCellsWithValues := self findOpenCellValuesIfEmpty: [ self error: 'InvalidGame' ].
	openCellsWithValues isEmpty
		ifTrue: [ self error: '' ].
		
	values := nil.
	openCellsWithValues keysAndValuesDo: [ :eachCell :eachValues |
		(values isNil or: [ values size > eachValues size ])
			ifTrue: [ 
				cell := eachCell.
				values := eachValues ] ].
		
	^values size = 1
		ifTrue: [ 
			SudokuGamePlay newFrom: self withMove: cell -> values first ]
		ifFalse: [ 
			self halt.
			SudokuGamePlay newFrom: self withMove: cell -> values first ]