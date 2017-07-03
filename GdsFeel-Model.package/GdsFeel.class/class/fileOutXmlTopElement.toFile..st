objects from disk
fileOutXmlTopElement: aXMLElement toFile: aFileReference 
	| doc |
	"self halt."
	aFileReference parent ensureCreateDirectory.
	doc := XMLDocument new version: 1.0 asString.
	doc addNode: aXMLElement.
	aFileReference ensureDelete.
	aFileReference writeStreamDo: [ :s |
		  doc printOn: s].