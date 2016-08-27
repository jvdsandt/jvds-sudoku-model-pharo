as yet unclassified
benchSimple2

	| game |
	
	game := SudokuGames simple9x9Game.
	game := SudokuAutoGame new initializeWithGame: game.
	[ 
		[ game isSolved ] whileFalse: [ game := game doNextMove ]
	 ] bench
	