command-handler
ostructNames: aNamesArgBlock sortBlock: sortBlock
	"aNamesArgBlock must be return structure name"
	| name names |
	"self assertNilDependent."
	self library ifNil: [^self error: 'no library open.'].
	self structure ifNotNil: [^self error: 'structure already opend.'].
	names := (self library structures sort: sortBlock) collect: [:each | each name].	
	name := aNamesArgBlock value: names.	
	name ifNil: [^self].
	self structure: (self library structureNamed: name).
