testing
check: aGame

	| values |
	
	values := Set new.
	cells do: [ :each | 
		aGame valueAt: each ifKnown: [ :val |
			(values includes: val)
				ifTrue: [ self error: 'Duplicate value: ', val asString ]
				ifFalse: [ values add: val ] ] ]