as yet unclassified
openCellsDo: aBlock

	board relevantCellsDo: [ :eachCell |
		(fixedCells includesKey: eachCell) 
			ifFalse: [ aBlock value: eachCell ] ]