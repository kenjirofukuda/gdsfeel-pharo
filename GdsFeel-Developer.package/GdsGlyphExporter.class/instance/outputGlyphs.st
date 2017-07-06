as yet unclassified
outputGlyphs
	self createDatabase.
	station := GdsStation default.
	station openLibraryNamed: self dbName.
	self class printableAsciiCodes
		do: [:asciiValue | 
			| structure sname |
			sname := self class glyphStructureBaseNameFor: asciiValue.
			structure := station library structureNamed: sname.
			structure
				ifNil: [
					structure := station newStructureNamed: sname withActivate: true.
					self createGlyph: asciiValue on: structure.
					station closeStructure.]
				ifNotNil: [
					Transcript 
						cr; 
						show: ('***WARNING*** Already exported: {1}' format: {sname})].].
	station closeLibrary.
	station := nil.