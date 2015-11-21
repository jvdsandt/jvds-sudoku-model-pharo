accessing
findOpenCellValuesIfEmpty: emptyBlock

	| cellOptions |
	
	cellOptions := Dictionary new.

	self boxes do: [ :eachBox |
		| fixedCells openValues |
		fixedCells := self valuesFor: eachBox cells.
		openValues := (1 to: 9) copyWithoutAll: fixedCells values.
		(eachBox cells copyWithoutAll: fixedCells keys) do: [ :eachOpenCell |
			| possibleValues |
			possibleValues := (cellOptions at: eachOpenCell ifAbsent: [ 1 to: 9 ]) intersection: openValues.
			possibleValues isEmpty
				ifTrue: [ ^emptyBlock value ].
			cellOptions at: eachOpenCell put: possibleValues ] ].
	
	invalidCells do: [ :eachCellWithValue |
		cellOptions at: eachCellWithValue key ifPresent: [ :values |
			cellOptions at: eachCellWithValue key put: (values copyWithout: eachCellWithValue value) ] ].
		
	^cellOptions