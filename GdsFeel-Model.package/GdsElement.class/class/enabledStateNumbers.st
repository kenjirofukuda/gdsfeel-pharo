accessing
enabledStateNumbers
	" 0 - 9 : item number
	       -1: id selected
	       -2: in database
	       -4: in trush (GdsFeel)"
	^GdsCompatibility default itemNumberRange asArray, {
		GdsElement inIdStausNumber .
		GdsElement inDatabaseStausNumber. 
		GdsElement inTrushStausNumber} 