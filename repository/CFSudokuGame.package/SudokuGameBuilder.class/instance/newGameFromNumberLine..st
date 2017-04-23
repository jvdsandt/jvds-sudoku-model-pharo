actions
newGameFromNumberLine: aString

	self reset.
	
	aString size < (board maxX * board maxY)
		ifTrue: [ self error: 'NumberLine too short' ].

	1 to: board maxY do: [ :y |
		1 to: board maxX do: [ :x |
			| value |
			value := aString at: ((y-1) * board maxX) + x.
			(value between: $0 and: $9)
				ifFalse: [ self error: 'Invalid cell value' ].
			value ~= $0
				ifTrue: [ self fix: (x @ y) -> value digitValue ] ] ].
		
	^self newGame 