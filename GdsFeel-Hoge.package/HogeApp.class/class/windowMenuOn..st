menu items
windowMenuOn: aBuilder
	"Window Shot utility"

	<windowMenu>
	(HogeAppSettings instance pngSaveDirectory asString asFileReference isDirectory)
		ifTrue: [ 
			(aBuilder item: #'Save As PNG')
				action: [ self savePngMorph: aBuilder model ];
				iconName: #image;
				order: 300;
				withSeparatorAfter ]