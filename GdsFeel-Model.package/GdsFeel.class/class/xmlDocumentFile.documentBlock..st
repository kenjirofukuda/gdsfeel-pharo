objects from disk
xmlDocumentFile: aFileReference documentBlock: aBlock
	"self halt."
	aFileReference readStreamDo: [ :s | | doc |
		doc := [XMLDOMParser parse: s]
			on: Error do: [:ex | ex traceCr. nil].
		doc ifNotNil:[aBlock value: doc] ].
