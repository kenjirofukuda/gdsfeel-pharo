tests
testFoo2
	| doc contents |

	contents := String streamContents: [ :s |
		s << GdsStructure dtd.
		s << self sampleStructure latestContents.
		].	
	doc := XMLDOMParser parse:  contents.
	doc traceCr.
