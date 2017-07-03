accessing - resource
sessionDirectory
	^(file parent / '.session' / file basename) asFileReference. 