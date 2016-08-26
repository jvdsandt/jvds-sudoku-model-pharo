as yet unclassified
timeSimple2

	Time millisecondsToRun: [ 
		100 timesRepeat: [ 
			| game |
			game := SudokuGames simple9x9Game.
			game := SudokuGamePlay2 new initializeWithGame: game.
			[ game isSolved ] whileFalse: [ game := game doNextMove ] ] ]