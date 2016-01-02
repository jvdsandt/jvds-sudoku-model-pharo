actions
addBox: aName from: p1 to: p2

	| cells |
	
	((p2 x - p1 x) + 1) * ((p2 y - p1 y) + 1) = 9
		ifFalse: [ self error: 'Invalid box' ].
	
	cells := OrderedCollection new: 9.	
	p1 y to: p2 y do: [ :ypos |
		p1 x to: p2 x do: [ :xpos |
			cells add: xpos @ ypos ] ].
			
	^boxes add: (SudokuBox named: aName asString cells: cells asArray)