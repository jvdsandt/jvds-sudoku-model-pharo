accessing
maxY

	| max |
	
	max := 0.
	boxes do: [ :each | max := max max: each maxY ].
	^max