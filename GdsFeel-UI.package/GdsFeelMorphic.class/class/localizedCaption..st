localize
localizedCaption: aKey
	| map |
	GdsFeelMorphic localizeMap ifNil: [^aKey].
	map := GdsFeelMorphic localizeMap at: aKey ifAbsent: [^aKey].
	^map at: #captionName ifAbsent: [aKey].