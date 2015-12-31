tests
testCreateStandardGame

	| builder game |
	
	builder := SudokuGameBuilder new
		fix: 2@1 -> 7;
		fix: 5@1 -> 4;
		yourself.
		
	game := builder newGame.
	
	self assert: (game valueAt: 2@1 ifUnknown: [ #empty ]) equals: 7.
	self assert: (game valueAt: 5@1 ifUnknown: [ #empty ]) equals: 4.
	self assert: (game valueAt: 1@1 ifUnknown: [ #empty ]) equals: #empty.