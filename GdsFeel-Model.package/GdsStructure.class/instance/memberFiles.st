private
memberFiles
	self isOpen ifFalse: [ ^self error: 'illigal call. library not extaracted.' ].
	^(library extractDirectory  / self relativeDirectoryName)
		files collect: [ :file | file ]. 