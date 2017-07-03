objects from disk
archivedNames
	"self archivedNames"
	^(self findFiles
		collect: [:each | each basename]) asArray