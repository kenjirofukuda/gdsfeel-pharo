copying
copy
	| newElement |
	newElement := super copy.
	newElement copyWireContext.
	(newElement instVarNamed: 'wire') element: newElement.
	^newElement