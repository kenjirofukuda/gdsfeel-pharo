private
fileMap
	"self default fileMap explore."
	fileMap
		ifNil: [ 
			fileMap := Dictionary new.
			GdsLibrary findFiles
				do: [ :f | 
					(fileMap includesKey: f)
						ifFalse: [ fileMap at: f put: (GdsLibrary fromFile: f) ] ] ].
	fileMap keysAndValuesRemove: [ :f :lib | f isFile not ].
	^ fileMap