as yet unclassified
workspace
	"don't call this method".
	"execute each line"

self doFontPloviderClass: [:clazz | 
	clazz current families explore].


self doFontPloviderClass: [:clazz | 
	clazz current families keys sort explore].

self doFontPloviderClass: [:clazz | 
	(clazz current families at: 'FreeMono') explore].


self doFontPloviderClass: [:clazz | 
	((clazz current families at: 'FreeMono') members detect: [:each |
		each fileInfo absolutePath asFileEntry shortName sameAs: 'FreeMono'] ifNone:[]) explore ].


"get only ttf family"
((((Smalltalk at: #FreeTypeFontFamilyMember) 
	allSubInstances 
		select: [:fm | 
			fm fileInfo absolutePath asFileEntry extension sameAs: 'ttf']
		thenCollect: [:fm | 
			(fm fileInfo familyName) ->
			(fm fileInfo absolutePath asFileEntry shortName)])) sort: [:a :b | a key < b key]) explore.
	
self detectFontPath explore.

