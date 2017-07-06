*GdsFeel-Model-ElementAddition
printLibreDxfOn: aStream 
	aStream nextPutAll: self libreDefaultBegin4.
	aStream ensureCr.
	aStream nextPutAll: self stanLayerTable2.
	aStream ensureCr.
	aStream nextPutAll: self libreDefaultBegin5.
	aStream ensureCr.
	self dxfShapesForExport do: [ :each | each printDxfOn: aStream ].	 
	aStream nextPutAll: self libreDefaultEnd2.		
	aStream ensureCr.
		