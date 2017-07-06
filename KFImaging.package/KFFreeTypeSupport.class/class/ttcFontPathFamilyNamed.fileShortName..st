accessing
ttcFontPathFamilyNamed: aFontFamilyName fileShortName: aShortName
	"self freeMonoFontPath"

	self
		doFontPloviderClass: [ :clazz | 
			(clazz current families at: aFontFamilyName ifAbsent: [  ])
				ifNotNil: [ :family | 
					(family members
						detect:
							[ :each | each fileInfo absolutePath asFileReference base sameAs: aShortName ]
						ifNone: [  ]) ifNotNil: [ :fm | ^ fm fileInfo absolutePath ] ] ].
	^ nil