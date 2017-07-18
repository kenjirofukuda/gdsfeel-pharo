as yet unclassified
savePngMorph: aMorph
	PNGReadWriter
		putForm: aMorph imageForm
		onFileNamed:
			(HogeApp pngSaveDirectory asFileReference / (aMorph asString , '.png'))
				nextVersion