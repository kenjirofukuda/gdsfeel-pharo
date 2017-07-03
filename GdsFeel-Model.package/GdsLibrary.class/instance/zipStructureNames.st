private
zipStructureNames
	self zipArchiveDo: [ :zip | 
		^(zip members select: [ :m | m isKindOf: ZipDirectoryMember ])
			collect: [ :dm | ((dm fileName allButLast) findTokens: '.') first ] ]