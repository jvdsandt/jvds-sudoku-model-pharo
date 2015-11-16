initialization
initializeWith: aBoxColl

	boxes := aBoxColl.
	
	maxX := maxY := 0.
	boxes do: [ :eachBox |
		maxX := maxX max: eachBox maxX.
		maxY := maxY max: eachBox maxY ]