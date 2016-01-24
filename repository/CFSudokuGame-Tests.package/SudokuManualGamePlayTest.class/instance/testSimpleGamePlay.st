tests
testSimpleGamePlay

	| game play |
	
	game := self demoSimpleGame.
	
	play := game manualMove: (1@6) -> 9.
	
	self assert: play class equals: SudokuManualGamePlay.
	self assert: (play valueAt: 1@6) equals: 9.
	self assert: play numberOfCellsToSolve equals: game numberOfCellsToSolve - 1. 
