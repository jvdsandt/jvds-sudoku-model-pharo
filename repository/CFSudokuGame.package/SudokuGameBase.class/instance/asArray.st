converting
asArray

	^(1 to: self board maxY) collect: [ :eachY |
		(1 to: self board maxX) collect: [ :eachX |
			self valueAt: eachX @ eachY ifUnknown: [ nil ] ] ]