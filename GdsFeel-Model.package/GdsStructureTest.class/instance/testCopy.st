tests
testCopy
	| src dest |
	GdsStation default structure
		ifNotNil: [ :s | 
			src := s.
			dest := s copy.
			self assert: src ~~ dest.
			self
				assert: (src instVarNamed: 'elements') ~~ (dest instVarNamed: 'elements').
			src elements
				doWithIndex:
					[ :each :index | self assert: each ~~ (dest elements at: index) ] ]