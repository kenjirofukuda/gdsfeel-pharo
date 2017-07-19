menu items
savePngMorph: aMorph
	PNGReadWriter
		putForm: aMorph imageForm
		onFileNamed:
			(HogeAppSettings instance pngSaveDirectory asFileReference / (aMorph asString , '.png'))
				nextVersion