accessing
isAutoCloseLibrary
	^ autoCloseLibrary ifNil: [ autoCloseLibrary := true ]