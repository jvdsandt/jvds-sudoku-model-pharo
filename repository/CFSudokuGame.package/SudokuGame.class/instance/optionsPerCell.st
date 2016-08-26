accessing
optionsPerCell

	| optionsPerCell |

	optionsPerCell := Dictionary new.
	self openCellsDo: [ :each |
		optionsPerCell at: each put: (board possibleValuesFor: each in: self) ].
	^optionsPerCell