command
putReference
	| targetElement newElement targetElements removeElements |
	newElement := false.
	removeElements := #().
	editElement
		ifNil: [newElement := true]
		ifNotNil: [
			elementType ~= editElement type
				ifTrue: [
					newElement := true.
					removeElements := Array with: editElement]].

	newElement
		ifTrue: [
			targetElements := self createElements.
			targetElements do: [:each |
				self structure addElement: each.]]
		ifFalse: [
			targetElement := editElement.
			targetElement fromItemContext: self atIndex: 1.
			targetElements := Array with: targetElement].

	targetElements 
		do: [:each |
			each statusNumber: GdsElement inDatabaseStausNumber.].

	removeElements 
		do: [:each |
			each statusNumber: GdsElement inTrushStausNumber.].

	self putEpilogue: newElement
	