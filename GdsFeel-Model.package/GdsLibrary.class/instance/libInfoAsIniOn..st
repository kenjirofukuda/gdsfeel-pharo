private
libInfoAsIniOn: aIniStream 
	| iniFile |
	iniFile := INIFile new.
	iniFile 
		section: 'INITLIB'
		at: 'name'
		put: self libName.
	iniFile 
		section: 'INITLIB'
		at: 'dbu'
		put: self databaseUnit asString.
	iniFile 
		section: 'INITLIB'
		at: 'unit'
		put: self unitString.
	iniFile writeOn: aIniStream.