printing
printDartOn: aStream 

	1 to: self board maxY do: [ :eachY |
		aStream nextPut: $[.
		(1 to: self board maxX)
			do: [ :eachX |
				aStream
					nextPutAll: (self valueAt: eachX @ eachY ifUnknown: [ '0' ]) asString ]
			separatedBy: [ 
				aStream nextPutAll: ', ' ].
		aStream nextPut: $]; cr ]