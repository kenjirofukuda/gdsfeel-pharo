accessing
sampleLibrary
	GdsStation default libraries
		ifNotEmpty: [ :libs | 
			(libs detect: [ :lib | lib name sameAs: 'BGHIER' ] ifNone: [ nil ])
				ifNotNil: [ :lib | ^ lib ]
				ifNil: [ ^ libs first ] ].
	^ nil