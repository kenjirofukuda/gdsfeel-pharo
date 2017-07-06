*GdsFeel-Model-ElementAddition
printDrafDxfOn: aStream 
	| shapes seed |
	shapes := self dxfShapesForExport.
	seed := (shapes collect: [ :each | each hash ])
		ifNotEmpty: [ :vals | vals max + 1 ]
		ifEmpty: [ 2000 ].
	aStream nextPutAll: (self drafDefaultBegin4WithHandSeed: seed printStringHex).
	aStream ensureCr.
	aStream nextPutAll: self stanLayerTable2.
	aStream ensureCr.
	aStream nextPutAll: self drafDefaultBegin5.
	aStream ensureCr.
	shapes do: [ :each | each printDxfOn: aStream ].	 
	aStream nextPutAll: self libreDefaultEnd2.	
	"aStream nextPutAll: self drafDefaultEnd2".			
	aStream ensureCr.
		