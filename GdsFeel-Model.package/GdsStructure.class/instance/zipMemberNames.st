private
zipMemberNames
	library zipArchiveDo: [ :zip | 
		^zip memberNames select: [ :path |
			(path asLowercase beginsWith: self relativeDirectoryName asLowercase)
				and: [ path asLowercase endsWith: '.gdsfeelbeta' ]]].
	^#().