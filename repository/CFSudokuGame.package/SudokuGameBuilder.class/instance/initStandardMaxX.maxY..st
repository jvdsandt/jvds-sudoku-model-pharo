initialization
initStandardMaxX: maxX maxY: maxY
	
	self reset.
	
	1 to: 9 do:
		[ :index | 
		boxes
			add:
				(SudokuBox
					named: 'row-' , index asString
					cells: ((1 to: 9) collect: [ :x | x @ index ]));
			add:
				(SudokuBox
					named: 'column-' , index asString
					cells: ((1 to: 9) collect: [ :y | index @ y ]));
			add:
				(SudokuBox
					named: 'box-' , index asString
					cells:
						((0 to: 8)
							collect:
								[ :z | 
								(3 * ((index - 1) \\ 3) + (z \\ 3 + 1))
									@ (3 * ((index - 1) // 3) + (z // 3 + 1)) ])) ]