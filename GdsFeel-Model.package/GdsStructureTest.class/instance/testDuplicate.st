tests-copying
testDuplicate
	| src dest |
	GdsStation default structure
		ifNotNil: [ :s | 
			src := s.
			dest := s duplicate.
			self assert: src ~~ dest.
			self
				assert: (src instVarNamed: 'elements') ~~ (dest instVarNamed: 'elements').
			src elements
				doWithIndex:
					[ :each :index | self assert: each ~~ (dest elements at: index) ] ]