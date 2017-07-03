private
libInfoMapFromIni: aIniStream
	| map line sepIndex key value |
	map := Dictionary new.
	[aIniStream atEnd]
		whileFalse: [
			line := aIniStream  upToAll: String crlf.
			sepIndex := line indexOf: $=.
			sepIndex > 0
				ifTrue: [
					key := line copyFrom: 1 to: sepIndex - 1.
					value := line copyFrom: sepIndex + 1 to: line size.
					map at: key put: value]].
	^map.	
	
	
	
	  