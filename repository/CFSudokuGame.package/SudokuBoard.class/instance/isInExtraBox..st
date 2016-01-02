testing
isInExtraBox: aCell

	boxes do: [ :each |
		(each isExtraBox and: [ each includes: aCell ])
			ifTrue: [ ^true ] ].
	^false