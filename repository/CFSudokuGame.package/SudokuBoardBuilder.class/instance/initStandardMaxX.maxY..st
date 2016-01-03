initialization
initStandardMaxX: maxX maxY: maxY
	
	1 to: maxY do: [ :index | 
		self addBox: 'row-', index asString from: 1@index to: maxX@index ].
	
	1 to: maxX do: [ :index | 
		self addBox: 'column-', index asString from: index@1 to: index@maxY ].
	
	1 to: maxY by: 3 do: [ :ypos |
		1 to: maxX by: 3 do: [ :xpos |
			self addBox: 'box-', xpos asString, 'x', ypos asString
				from: xpos @ ypos 
				to: (xpos+2) @ (ypos+2) ] ]