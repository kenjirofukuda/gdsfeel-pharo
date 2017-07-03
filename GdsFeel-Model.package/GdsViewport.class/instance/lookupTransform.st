lookup
lookupTransform
	| newTransform |
	newTransform := MatrixTransform2x3 identity.
	newTransform := newTransform composedWithLocal: self basicTransform.
	transformStack do: [ :tx | newTransform := newTransform composedWithLocal: tx ].
	"self announcer announce: #viewTransformChanged."
	^newTransform
	