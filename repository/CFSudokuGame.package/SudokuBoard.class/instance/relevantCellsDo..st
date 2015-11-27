enumerating
relevantCellsDo: aBlock

	| cellsSet |
	
	cellsSet := Set new.
	boxes do: [ :eachBox |
		eachBox cells do: [ :eachCell |
			(cellsSet includes: eachCell)
				ifFalse: [ 
					aBlock value: eachCell.
					cellsSet add: eachCell ] ] ]