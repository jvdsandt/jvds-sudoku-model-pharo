enumerating
cellsSharingBoxWith: aCell do: aBlock

	| cellsSet |
	
	cellsSet := Set new.
	boxes do: [ :eachBox |
		(eachBox includes: aCell)
			ifTrue: [ 
				eachBox cells do: [ :eachCell |
					(eachCell ~= aCell and: [ (cellsSet includes: eachCell) not ])
						ifTrue: [ 
							aBlock value: eachCell.
							cellsSet add: eachCell ] ] ] ]