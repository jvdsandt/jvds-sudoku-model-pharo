tests
testSimpleGamePlay

	| game stepCount |
	
	game := SudokuGames simple9x9Game.
	
	stepCount := 0.
	[ game isSolved ]
		whileFalse: [ game := game doNextMove. stepCount := stepCount + 1 ].
		
	self assert: game asArray equals: SudokuGames simple9x9GameSolutionArray.
	self assert: stepCount equals: 45.