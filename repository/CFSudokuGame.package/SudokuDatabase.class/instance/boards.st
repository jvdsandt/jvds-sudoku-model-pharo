accessing
boards

	^boards ifNil: [ 
		boards := OrderedCollection new
			add: self class sampleBoard9x9;
			add: self class sampleExtraBoard9x9;
			yourself ]