tests
testOpenSudokuHardGames

	| games solvedGames |
	
	games := SudokuDatabase openSudokuHardGames.
	
	solvedGames := games collect: [ :each | each asSolvedGame ]