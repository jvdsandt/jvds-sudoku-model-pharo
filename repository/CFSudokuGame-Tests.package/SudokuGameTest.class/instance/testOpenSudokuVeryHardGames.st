tests
testOpenSudokuVeryHardGames

	| games solvedGames |
	
	games := SudokuDatabase openSudokuVeryHardGames.
	
	solvedGames := games collect: [ :each | each asSolvedGame ]