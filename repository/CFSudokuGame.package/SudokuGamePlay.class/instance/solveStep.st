accessing
solveStep

	| cellOptions |
	
	cellOptions := self findOpenCellValuesIfEmpty: [  ].
		
	^(cellOptions select: [ :eachValues | eachValues size = 1 ]) collect: [ :eachValues | eachValues first ]