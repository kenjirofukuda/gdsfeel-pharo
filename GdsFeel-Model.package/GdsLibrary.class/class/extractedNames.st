accessing
extractedNames
	"self extractedNames"
	^((GdsFeel projectDirectory) directoryNames 
		select: [:each | 
			(each endsWith: self extension)]) 