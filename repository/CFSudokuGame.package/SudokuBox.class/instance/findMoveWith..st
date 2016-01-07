actions
findMoveWith: openCellsWithValues

	| cellsPerValue |
	
	cellsPerValue := Dictionary new.

	self cellsDo: [ :eachCell |
		openCellsWithValues at: eachCell ifPresent: [ :values |
			values do: [ :eachValue |
				(cellsPerValue at: eachValue ifAbsentPut: [ OrderedCollection new ]) add: eachCell ] ] ].
	
	cellsPerValue keysAndValuesDo: [ :value :valCells |
		valCells size = 1
			ifTrue: [ ^valCells first -> value ] ].
		
	^nil