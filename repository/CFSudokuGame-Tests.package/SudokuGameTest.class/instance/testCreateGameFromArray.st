tests
testCreateGameFromArray

	| builder game |
	
	builder := SudokuGameBuilder new.
	builder fixWithArray: #(
		#(1 0 0 0 0 7 0 9 0)
		#(0 3 0 0 2 0 0 0 8)
		#(0 0 9 6 0 0 5 0 0)
		#(0 0 5 3 0 0 9 0 0)
		#(0 1 0 0 8 0 0 0 2)
		#(6 0 0 0 0 4 0 0 0)
		#(3 0 0 0 0 0 0 1 0)
		#(0 4 0 0 0 0 0 0 7)
		#(0 0 7 0 0 0 3 0 0)).
		
	game := builder newGame.
	self assert: (game valueAt: 1@1 ifUnknown: [ #empty ]) equals: 1.
	self assert: (game valueAt: 7@9 ifUnknown: [ #empty ]) equals: 3.
	self assert: (game valueAt: 5@3 ifUnknown: [ #empty ]) equals: #empty.
	
	self assert: (game canAdd: 2@1 -> 2).
	self assert: (game canAdd: 2@1 -> 4) not.
	self assert: (game canAdd: 3@9 -> 7) not.

