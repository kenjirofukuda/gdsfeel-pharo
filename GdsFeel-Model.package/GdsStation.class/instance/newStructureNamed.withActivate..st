instance creation
newStructureNamed: aBlockOrString withActivate: aActivateBoolean
	| name newStructure |
	self assertNilDependent.
	self library ifNil: [^self error: 'no library open.'].
	aActivateBoolean
		ifTrue: [
			self structure ifNotNil: [^self error: 'structure already opend.']].
	name := aBlockOrString value.
	name ifNil: [^self].
	newStructure := self library newStructureNamed: name.
	aActivateBoolean
		ifTrue: [
			self structure: newStructure.
			].
	^newStructure
