as yet unclassified
loadStructureNamed: aStructureName
	| structure |
	structure := self newStructureNamed: aStructureName withActivate: false.
	[structure load] on: Error
		do: 
			[:ex | 
				Transcript
					cr;
					show: (String streamContents: 
								[:s | 
									s nextPutAll: '***ERROR***'.
									s nextPutAll: ' '.
									s nextPutAll: 'skip broken structure: '.
									s nextPutAll: aStructureName]).
				self removeStructure: structure]