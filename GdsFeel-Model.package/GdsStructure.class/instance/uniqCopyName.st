as yet unclassified
uniqCopyName
	| uniqName strucNames |
	strucNames := self library structureNames.
	uniqName := self name, '_COPY'.
	[strucNames includes: uniqName]
		whileTrue: [ uniqName := uniqName, '_COPY' ].
	^ uniqName.
