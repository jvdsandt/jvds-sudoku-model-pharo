tests
testCreateGameNRC

	| boardBuilder gameBuilder game stepCount |
	
	boardBuilder := SudokuBoardBuilder new
		initStandardMaxX:9 maxY: 9;
		addBoxFrom: 2@2 to: 4@4;
		addBoxFrom: 6@2 to: 8@4;
		addBoxFrom: 2@6 to: 4@8;
		addBoxFrom: 6@6 to: 8@8;
		yourself.
  
	gameBuilder := SudokuGameBuilder withBoard: boardBuilder newBoard.
	gameBuilder fixWithArray: #(
		#(0 0 8 0 0 0 5 0 3)
		#(0 0 0 0 0 0 0 4 0)
		#(1 0 7 0 0 0 0 2 6)
		#(0 8 0 0 0 0 3 0 0)
		#(0 0 0 0 0 0 0 0 0)
		#(0 0 0 0 8 0 0 0 0)
		#(2 1 0 0 0 0 7 0 0)
		#(7 0 0 0 6 0 8 5 0)
		#(0 0 9 0 4 1 0 0 0)).
		
	self assert: (gameBuilder canAdd: 9@9 -> 2).
	self deny: (gameBuilder canAdd: 9@9 -> 7).
		
	game := gameBuilder newGame.
	self assert: (game valueAt: 1@1 ifUnknown: [ #empty ]) equals: #empty.
	self deny: (game isFixed: 1@1).
	self assert: (game valueAt: 1@3 ifUnknown: [ #empty ]) equals: 1.
	self assert: (game isFixed: 1@3).
	
	stepCount := 0.
	[ game isSolved ]
		whileFalse: [ game := game doNextMove. stepCount := stepCount + 1 ].
