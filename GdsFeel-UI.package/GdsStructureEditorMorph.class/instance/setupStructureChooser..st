container chooser
setupStructureChooser: aGdsStation
	aGdsStation ifNil: [ ^self ].
	aGdsStation library ifNil: [^self].
	previewMap ifNil: [previewMap := Dictionary new.].
	(self layerForKey: #structureChooser)
		ifNotNil: [:chooserMorph |
			chooserMorph removeAllMorphs. 
			(aGdsStation library structureNames sort: [ :a :b | a < b ])
				do: [:each | | button cellMorph    |
					button := PluggableButtonMorph new label: each font: GdsFeelMorphic  controlCaptionFont .
					button model: aGdsStation.
					button action: #openStructureNamed:.
					button arguments: (Array with: each).
					cellMorph := button.
					"(previewMap includesKey: each)
						ifFalse: [
							struc := aGdsStation library structureNamed: each.
							imagePath := (struc fileDirectoryFoPreview) fullNameFor: 'preview.png'.
							(FileDirectory default fileExists: imagePath)
								ifTrue: [ 
									img := nil.
									[img := ImageReadWriter formFromFileNamed: imagePath] 
										on: Error do: [:ex | img := nil].
									img ifNotNil: [previewMap at: each put: img]]].
					img := previewMap at: each ifAbsent: [nil].
					img ifNotNil: [
						cellMorph := AlignmentMorph newColumn.
						cellMorph addMorphBack: (img magnifyBy: 0.125) asMorph.
						cellMorph addMorphBack: button]."							 
					chooserMorph addMorphBack: cellMorph]].
	self setVisible: true forKey: #structureChooser.