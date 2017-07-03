as yet unclassified
announceAttributeChanged: aSymbol from: aValue1 to: aValue2 
	self announce: (GdsItemAttributeChanged new 
		item: self; 
		attribute: aSymbol;
		oldValue: aValue1;
		newValue: aValue2;
		yourself).