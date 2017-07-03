accessing
dataExtentForElements
	dataExtentForElements ifNil: [dataExtentForElements := self lookupDataExtentForElements ].
	^dataExtentForElements.