private
revisonOfName: memberName
	| m|
	m := self memberMatcher: memberName.
	m ifNil: [ ^-1 ].
	m subexpressionCount < 4 ifTrue: [ ^-2 ].
	"((m subexpression: 1) sameAs: self name) ifFalse: [ ^-3 ]."
	^(m subexpression: 3) asInteger.	