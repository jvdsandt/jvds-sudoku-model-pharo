as yet unclassified
benchSimple

	| game |
	
	game := SudokuGames simple9x9Game.
	[ game asSolvedGame ] bench
	