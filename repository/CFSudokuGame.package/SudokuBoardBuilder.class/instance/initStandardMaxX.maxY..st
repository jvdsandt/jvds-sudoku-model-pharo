initialization
initStandardMaxX: maxX maxY: maxY
	
	1 to: 9 do: [ :index | 
		self addBox: 'row-', index asString from: 1@index to: maxX@index.
		self addBox: 'column-', index asString from: index@1 to: index@maxY.
		boxes 	add:
			(SudokuBox
				named: 'box-' , index asString
				cells:
					((0 to: 8) collect: [ :z | 
						(3 * ((index - 1) \\ 3) + (z \\ 3 + 1))
							@ (3 * ((index - 1) // 3) + (z // 3 + 1)) ])) ]