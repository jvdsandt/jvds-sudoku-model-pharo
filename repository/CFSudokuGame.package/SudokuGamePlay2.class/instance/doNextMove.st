actions
doNextMove

	| move |
	
	move := self firstSingleOptionIfNone: [ nil ].
	move notNil
		ifTrue: [ ^self newMove: move ].
		
	self boxes do: [ :eachBox |
		(eachBox findMoveWith: optionsPerCell)
			ifNotNil: [ :cellWithValue |
				^self newMove: cellWithValue ] ].
		
	^self newGuessMove: (self takeGuessFrom: optionsPerCell)