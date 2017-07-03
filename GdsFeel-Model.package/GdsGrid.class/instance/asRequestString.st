convert
asRequestString
	^GdsFeel join:  (self asAbbreviateArray collect: [:each | each asString]) using: ' '.