private
tabForStructure: aGdsStructure
	^ tabManager tabs
		detect: [ :tab | (tab contents valueOfProperty: #library ifAbsent: [  ]) = aGdsStructure library ]
		ifNone: [  ]