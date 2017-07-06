accessing
detectFontPath
	"self detectFontPath"
	self favaritMonoSpaceFamilyNames do: [:assoc |
		(self ttcFontPathFamilyNamed: assoc key fileShortName: assoc value)
			ifNotNil: [:path | ^path]].
	^nil.