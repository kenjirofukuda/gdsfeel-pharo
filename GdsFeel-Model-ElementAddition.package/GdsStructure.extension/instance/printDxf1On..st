*GdsFeel-Model-ElementAddition
printDxf1On: aStream 
	aStream nextPutAll: self minHeaderSection.
	aStream ensureCr.
	aStream nextPutAll: self minTableSection.	
	aStream ensureCr.
	aStream nextPutAll: self minBlockSection.		
	aStream ensureCr.
	"aStream nextPutAll: self minEntitiesSectionStart.		
	aStream ensureCr."
	(self elements collect: [ :el | el asDxfShape ] thenSelect: [ :shape | shape notNil ]).
	
	aStream nextPutAll: self minEntitiesBody.		
	aStream ensureCr.
	aStream nextPutAll: self minEntitiesSectionEnd.		
	aStream ensureCr.
	aStream nextPutAll: self minEOF.		
	aStream ensureCr.
		