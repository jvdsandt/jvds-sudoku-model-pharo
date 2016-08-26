actions
goBackAndMove

	^ guessed 
		ifTrue: [ self class newFrom: previousPlay withInvalidMove: lastMove ifInvalid: [ self goBackAndMove ] ]
		ifFalse: [ previousPlay goBackAndMove ]