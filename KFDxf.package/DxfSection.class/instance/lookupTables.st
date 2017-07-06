accessing
lookupTables
	^ self splitByTable collect: [ :each | 
		| t | 
		t := DxfTable new.
		t dataGroups: each.
		t
		 ]