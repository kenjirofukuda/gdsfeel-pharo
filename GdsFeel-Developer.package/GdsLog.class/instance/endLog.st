as yet unclassified
endLog
	logStream ifNil: [^self].
	logStream position = 0 ifTrue: [^self].
	(Workspace new contents: logStream contents)
		openLabel: self category asString.