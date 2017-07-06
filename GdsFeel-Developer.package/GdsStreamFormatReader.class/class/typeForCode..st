as yet unclassified
typeForCode: aByte
	^TypeCodeMap at: aByte ifAbsent: [#UNKOWN]
	