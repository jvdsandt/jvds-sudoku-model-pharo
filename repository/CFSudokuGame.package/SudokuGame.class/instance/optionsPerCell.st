accessing
optionsPerCell

	^optionsPerCell ifNil: [
		optionsPerCell := Dictionary new.
		self openCellsDo: [ :each |
			optionsPerCell at: each put: (board possibleValuesFor: each in: self) ].
		optionsPerCell ]