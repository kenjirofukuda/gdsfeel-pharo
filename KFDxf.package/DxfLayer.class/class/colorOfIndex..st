accessing
colorOfIndex: anIndex
	^ (ColorIndexMap at: anIndex ifAbsent: [ Color white. ]) copy