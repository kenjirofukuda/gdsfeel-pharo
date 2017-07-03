key generator
lookupMaxKeyNumber
	| filledElements | 
	filledElements := self elements select: [:each | each keyNumberFilled].
	filledElements 
		ifEmpty: [^0]
		ifNotEmpty: [^(filledElements collect: [:each | each keyNumber]) max].