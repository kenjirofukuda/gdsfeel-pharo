container chooser
setupLibraryChooser: aGdsStation
	(self layerForKey: #libraryChooser)
		ifNotNil: [:chooserMorph |
			chooserMorph removeAllMorphs. 
			GdsLibrary baseNames
				do: [:each | | button|
					button := (PluggableButtonMorph new) 
						label: each ;
						model: aGdsStation;
						action: #openLibraryNamed:;
					 	arguments: (Array with: each);
						yourself.
					chooserMorph addMorphBack: button]].
	self setVisible: true forKey: #libraryChooser.