command
createElements
	^ Array streamContents: [ :s |
		1 to: self vertices size do: [:index |
			s nextPut: (self elementClass fromItemContext: self atIndex: index)]]
