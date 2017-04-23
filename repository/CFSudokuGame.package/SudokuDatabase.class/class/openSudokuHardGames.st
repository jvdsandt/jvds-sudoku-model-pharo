samples
openSudokuHardGames

	| stream |
	
	stream := ReadStream on: self openSudokuHardGamesData.
	^self readGamesFrom: stream