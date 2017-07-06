as yet unclassified
downloadSample
	"self downloadSample"
	| fileName archiver zipFile |
	fileName := self urlForZipedGDSreaderArchive asZnUrl segments last.
	zipFile := GdsFeel projectDirectory / fileName.
	zipFile isFile
		ifFalse:  [
			self downloadUrl: self urlForZipedGDSreaderArchive  toFileNamed: zipFile fullName].

	zipFile isFile
		ifFalse:  [
			^self inform: 'Download Fail'].
		
	(ZipArchive isZipArchive: zipFile fullName)
		ifFalse: [^self inform: ('Not a Zip File {1}' format: {zipFile fullName})].
		
	archiver := ZipArchive new.
	archiver readFrom: zipFile fullName.
	archiver extractAllTo: GdsFeel projectDirectory .
	archiver close.		
