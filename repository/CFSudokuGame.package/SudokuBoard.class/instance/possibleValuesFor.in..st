as yet unclassified
possibleValuesFor: aCell in: aGame
	"Answer a collection of values that <aCell> can contain in <aGame>."

	| values |
	
	values := 1 to: 9.
	self boxesFor: aCell do: [ :eachBox |
		values := eachBox possibleValuesFor: aCell from: values in: aGame ].
	^values