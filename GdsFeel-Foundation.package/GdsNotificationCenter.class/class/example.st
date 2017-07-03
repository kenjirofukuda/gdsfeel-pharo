as yet unclassified
example
	| nc |
	"self example"
	nc := GdsNotificationCenter defaultCenter.
	nc addObserver: Transcript 
		selector: #printString
		name: nil object: nil.

	nc addObserver: World 
		selector: #printString 
		name: 'NSWindowSizeDidChangeNotification' object: nil.

	nc addObserver: World 
		selector: #printString 
		name: 'NSWindowSizeWillChangeNotification' object: nil.

	nc addObserver: World 
		selector: #asString 
		name: nil object: Smalltalk.

	nc addObserver: World 
		selector: #asString 
		name: 'NSWindowSizeWillChangeNotification' object: Smalltalk.

	nc addObserver: Smalltalk 
		selector: #printString 
		name: 'NSWindowSizeWillChangeNotification' object: nil.

	nc explore