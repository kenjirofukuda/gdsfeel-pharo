compatibility
addToMenu: aMenu actionAssociations: labelToSelectorArray
	| appendSel |
	"compatibility Pharo 3, 4"
	appendSel := (aMenu respondsTo: #add:selector:)
		ifTrue: [ #add:selector: ]
		ifFalse: [ #add:action: ].
	labelToSelectorArray
		do: [ :labelToSelector | 
			aMenu perform: appendSel with: labelToSelector key  with: labelToSelector value ]
