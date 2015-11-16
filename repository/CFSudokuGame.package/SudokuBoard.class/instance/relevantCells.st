accessing
relevantCells

	^boxes
		inject: Set new
		into: [ :set :eachBox | set addAll: eachBox cells; yourself ]