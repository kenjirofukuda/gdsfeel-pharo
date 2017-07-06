private
lookupDataGroups
	| index group |
	^ Array streamContents: [ :arrayStream | 
		index := 0.
		self lines do: [ :line | 
			index even
				ifTrue: [ 
					group := DxfDataGroup new.
					group code: line]
				ifFalse: [
					group 
						ifNotNil: [ 
							group data: line.
							arrayStream nextPut: group.
							group := nil ]].
				index := index + 1.
			].
	]