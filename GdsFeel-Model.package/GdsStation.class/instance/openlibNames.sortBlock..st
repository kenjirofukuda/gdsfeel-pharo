command-handler
openlibNames: aNamesArgBlock sortBlock: sortBlock
	"aNamesArgBlock must be return library name"
	| name names |
	self assertNilDependent.
	self library ifNotNil: [^self error: 'library already opend.'].
	self structure ifNotNil: [^self error: 'structure already opend.'].
	names := (GdsLibrary baseNames asArray sort: sortBlock) collect: [:each | each ].	
	name := aNamesArgBlock value: names.	
	name ifNil: [^self].
	self openLibraryNamed:  name.
