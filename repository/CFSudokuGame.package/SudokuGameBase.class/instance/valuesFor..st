accessing
valuesFor: aCells

	^aCells
		inject: Dictionary new
		into: [ :dict :eachCell |
			self valueAt: eachCell ifKnown: [ :value | dict at: eachCell put: value ].
			dict ]