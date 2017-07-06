utility
chooseFullFileName: labelString extensions: exts
	| file dirPath |
	dirPath := GdsFeelMorphic lastVisitDirectory .
	dirPath 
		ifNotNil: [ 
			dirPath asFileReference exists
				ifFalse: [ dirPath := nil ] ].
	file := UIManager default  chooseFullFileName: labelString extensions: exts path: dirPath preview: nil.
	"file := UIManager default 
		chooseFullFileNameMatching: patterns
		label: labelString
		path: dirPath."
	file ifNil: [^nil].
	GdsFeelMorphic lastVisitDirectory: file asFileReference parent fullName.
	^ file.
	
	