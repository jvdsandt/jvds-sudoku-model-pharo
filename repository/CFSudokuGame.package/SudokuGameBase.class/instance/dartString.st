printing
dartString

	^String streamContents: [ :s | self printDartOn: s ]