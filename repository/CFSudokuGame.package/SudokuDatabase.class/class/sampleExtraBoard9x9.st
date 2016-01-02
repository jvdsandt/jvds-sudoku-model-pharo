samples
sampleExtraBoard9x9

	^SudokuBoardBuilder new
		initStandardMaxX: 9 maxY: 9;
		addBoxFrom: 2@2 to: 4@4;
		addBoxFrom: 6@2 to: 8@4;
		addBoxFrom: 2@6 to: 4@8;
		addBoxFrom: 6@6 to: 8@8;
		newBoard
  
