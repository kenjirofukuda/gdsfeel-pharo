*GdsFeel-UI-Extension
chooseFullFileNameMatching: patterns label: labelString path: aDirectoryPath
	|modalMorph|
	modalMorph := self modalMorph.
	^modalMorph theme  
		chooseFullFileNameIn: modalMorph
		title: (labelString ifNil: ['Choose File' translated])
		patterns: patterns
		path: aDirectoryPath
		preview: false