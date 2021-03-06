tests
testDifficultGamePlay

	| game stepCount |
	
	game := SudokuGames difficult9x9Game.
	
	stepCount := 0.
	[ game isSolved ]
		whileFalse: [ game := game doNextMove. stepCount := stepCount + 1 ].
		
	self assert: game asArray equals: SudokuGames difficult9x9GameSolutionArray 
