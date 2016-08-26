as yet unclassified
firstSingleOptionIfNone: aBlock

	optionsPerCell associationsDo: [ :eachAssoc |
		eachAssoc value size = 1
			ifTrue: [ ^eachAssoc key -> eachAssoc value first ] ].
	^aBlock value	