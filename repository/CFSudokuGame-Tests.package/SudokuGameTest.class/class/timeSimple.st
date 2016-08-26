as yet unclassified
timeSimple

	Time millisecondsToRun: [ 
		100 timesRepeat: [ 
			| game |
			game := SudokuGames simple9x9Game.
			game asSolvedGame ] ]
	