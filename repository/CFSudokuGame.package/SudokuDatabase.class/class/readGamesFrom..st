samples
readGamesFrom: aStream

	| builder games |
	
	builder := SudokuGameBuilder new.
	games := OrderedCollection new.
	
	[ aStream atEnd ] whileFalse: [ 
		| line |
		line := aStream nextLine.
		line notEmpty
			ifTrue: [ games add: (builder newGameFromNumberLine: line) ] ].
	
	^games
	