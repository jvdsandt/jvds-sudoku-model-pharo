samples
openSudokuVeryHardGames

	| stream |
	
	stream := ReadStream on: self openSudokuVeryHardGamesData.
	^self readGamesFrom: stream