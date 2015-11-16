printing
printOn: aStream 

	1 to: self board maxY do: [ :eachY |
		(1 to: self board maxX)
			do: [ :eachX |
				aStream
					nextPutAll: (self valueAt: eachX @ eachY ifUnknown: [ '?' ]) asString ]
			separatedBy: [ 
				aStream space ].
		aStream cr ]