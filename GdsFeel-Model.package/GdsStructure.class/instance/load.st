objects from disk
load
			self storageFile isFile
				ifTrue: [
					GdsFeel
						xmlDocumentFile: self storageFile 
						documentBlock: [:doc | self loadFromXmlDocument: doc]].