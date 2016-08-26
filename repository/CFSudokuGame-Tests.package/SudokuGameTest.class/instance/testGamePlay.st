tests
testGamePlay

	| game  |
	
	game := SudokuGames standard9x9Game.
	[ game isSolved ]
		whileFalse: [ game := game doNextMove ].
