printing
printKotlinOn: aStream 

	1 to: self board maxY do: [ :eachY |
		aStream nextPutAll: 'arrayOf('.
		(1 to: self board maxX)
			do: [ :eachX |
				aStream
					nextPutAll: (self valueAt: eachX @ eachY ifUnknown: [ '0' ]) asString ]
			separatedBy: [ 
				aStream nextPutAll: ', ' ].
		aStream nextPutAll: '),'; cr ]