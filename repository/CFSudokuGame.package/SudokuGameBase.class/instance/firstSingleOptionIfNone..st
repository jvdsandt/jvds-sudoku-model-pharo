actions-internal
firstSingleOptionIfNone: aBlock
	"Answer an association of the first cell with only a single possible value."

	self optionsPerCell associationsDo: [ :eachAssoc |
		eachAssoc value size = 1
			ifTrue: [ ^eachAssoc key -> eachAssoc value first ] ].
	^aBlock value