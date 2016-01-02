accessing
maxX

	| max |
	
	max := 0.
	boxes do: [ :each | max := max max: each maxX ].
	^max