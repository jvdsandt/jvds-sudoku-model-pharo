as yet unclassified
fixWithArray: anArrayOfArrays

	anArrayOfArrays doWithIndex: [ :eachRow :ypos |
		eachRow doWithIndex: [ :eachValue :xpos |
			eachValue > 0
				ifTrue: [ self fix: xpos @ ypos -> eachValue ] ] ]