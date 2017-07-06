as yet unclassified
chooseSampleFile
	"self chooseSampleFile"
	| file |
	file = UIManager default chooseFileMatching: #('*.gds' '*.cal') label: 'Choose sampleFile'.
	file ifNil: [^nil].
	^ file
	
	