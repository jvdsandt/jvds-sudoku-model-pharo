tests
testFindOpenCellValues

	| game options |
	
	game := SudokuGame newFromArray: #(
		#(1 0 0 0 0 7 0 9 0)
		#(0 3 0 0 2 0 0 0 8)
		#(0 0 9 6 0 0 5 0 0)
		#(0 0 5 3 0 0 9 0 0)
		#(0 1 0 0 8 0 0 0 2)
		#(6 0 0 0 0 4 0 0 0)
		#(3 0 0 0 0 0 0 1 0)
		#(0 4 0 0 0 0 0 0 7)
		#(0 0 7 0 0 0 3 0 0)).
	
	options := game findOpenCellValuesIfEmpty: [ nil ].

	self deny: (options includesKey: 1@1).
	self assert: (options includesKey: 2@1).