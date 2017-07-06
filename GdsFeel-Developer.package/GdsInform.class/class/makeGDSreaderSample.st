as yet unclassified
makeGDSreaderSample
	"self makeGDSreaderSample"
	| inst reader sampleFile |
	sampleFile := self sampleStreamFormatFile.
	sampleFile isFile
		ifFalse: [ self downloadSample ].
	sampleFile isFile 
		ifFalse: [ ^ self inform: 'Sample file not found' ].
	reader := GdsStreamFormatReader instanceOfPath: sampleFile fullName.
	reader ifNil: [ ^ self ].
	inst := GdsInform new reader: reader.
	Cursor wait showWhile: [ inst run ]