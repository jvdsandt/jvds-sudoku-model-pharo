enumerating
boxesFor: aCell do: aBlock

	boxes do: [ :each |
		(each includes: aCell)
			ifTrue: [ aBlock value: each ] ]