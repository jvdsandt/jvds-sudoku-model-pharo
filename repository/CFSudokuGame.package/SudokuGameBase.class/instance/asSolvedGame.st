converting
asSolvedGame

	| game |

	game := self.
	[ game isSolved ]
		whileFalse: [ game := game doNextMove ].
		
	^game
