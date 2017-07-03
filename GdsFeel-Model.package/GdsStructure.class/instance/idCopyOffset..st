debug
idCopyOffset: aPoint
	| newElements |
	newElements := OrderedCollection new.
	self 
		clonedElements: self idSelection elements 
		appendOn: newElements 
		fromToBlock: [:from :to |
			to moveRelative: aPoint from: from.].
	self idSelection idClear.
	newElements do: [:each |
		self addElement: each.
		self idSelection idAdd: each keyNumber.
		self pushDirtyReservedArea: each.].
	self comitDirty.
	
	