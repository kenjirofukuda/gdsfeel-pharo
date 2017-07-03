convert
coerceStructureName: aString
	| partial |
	partial := aString copyReplaceAll: ' ' with: '_' .
	partial ifEmpty: [^'' copy].
	^self checker checkName: partial fixErrors: true.