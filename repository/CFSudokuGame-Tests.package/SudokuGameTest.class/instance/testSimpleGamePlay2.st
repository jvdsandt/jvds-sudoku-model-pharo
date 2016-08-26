tests
testSimpleGamePlay2

	| game stepCount |
	
	game := SudokuGames simple9x9Game.
	game := SudokuGamePlay2 new initializeWithGame: game.
	
	stepCount := 0.
	[ game isSolved ]
		whileFalse: [ game := game doNextMove. stepCount := stepCount + 1 ].
		
	self assert: game asArray equals: #(
		#( 4 3 5 2 6 9 7 8 1)
		#( 6 8 2 5 7 1 4 9 3)
		#( 1 9 7 8 3 4 5 6 2)
		#( 8 2 6 1 9 5 3 4 7)
		#( 3 7 4 6 8 2 9 1 5)
		#( 9 5 1 7 4 3 6 2 8)
		#( 5 1 9 3 2 6 8 7 4)
		#( 2 4 8 9 5 7 1 3 6)
		#( 7 6 3 4 1 8 2 5 9)).
	self assert: stepCount equals: 45.