localize
localizedHelpText: aKey
	| map |
	GdsFeelMorphic localizeMap ifNil: [^''].
	map := GdsFeelMorphic localizeMap at: aKey ifAbsent: [^''].
	^map at: #toolTipText ifAbsent: [''].	