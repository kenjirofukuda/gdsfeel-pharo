tests-copying
testCopy
	| src dest |
	GdsStation default structure
		ifNotNil: [ :s | 
			s elements
				do: [ :e | 
					src := e.
					dest := src copy.
					self assert: src ~~ dest.
					self assert: dest state equals: #inStructure ] ]