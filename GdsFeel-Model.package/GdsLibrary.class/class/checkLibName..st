check
checkLibName: aString
	| libnameSizeRange checkName |
	checkName := self baseName: aString.
	GdsCompatibility default libNameMax > 0
		ifTrue: [
			libnameSizeRange := 1 to: GdsCompatibility default libNameMax.
			(libnameSizeRange includes: checkName size)
				ifFalse: [
					^self error: ('LIBRARYNAME SIZE UNDER {1} ' 
						format: {libnameSizeRange max})]].
	(GdsCompatibility default isValidLibraryName: checkName)
		ifFalse: [self error: 'LIBRARY NAME ERROR'].
	"(self exists: checkName)
		ifTrue: [
			^self error: ('LIBNAME ALREADY EXISTS: {1}' format: {checkName})]."