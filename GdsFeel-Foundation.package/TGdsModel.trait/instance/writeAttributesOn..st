T-GdsModel
writeAttributesOn: aDictionry 
	self class instVarNames
		do: [ :iName | | iVar |
			iVar := self instVarNamed: iName.
			(iVar isKindOf: GdsObjectProperty)
				ifTrue: [ 
					aDictionry at: iVar propertyName put: iVar getValue]]