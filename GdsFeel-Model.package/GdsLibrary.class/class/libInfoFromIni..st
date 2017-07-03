private
libInfoFromIni: aIniStream
	| iniFile |
	iniFile := INIFile readFrom: aIniStream.
	^(iniFile section: 'INITLIB')
	
	
	
	
	  