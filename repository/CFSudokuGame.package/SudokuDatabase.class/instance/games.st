accessing
games

	^games ifNil: [ 
		games := OrderedCollection new
			add: self class sampleSimpleGame;
			add: self class sampleHardGame;
			add: self class sampleNRCGame;
			yourself ]