as yet unclassified
testPossibleValues

	| game board |
	
	game := SudokuGames simple9x9Game.
	board := game board.
	
	self assert: (board possibleValuesFor: 1@1 in: game) equals: #( 3 4 5 )