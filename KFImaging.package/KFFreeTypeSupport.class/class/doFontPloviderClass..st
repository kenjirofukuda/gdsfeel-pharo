accessing
doFontPloviderClass: aClassArgBlock
	"don't call this method".
	"execute each line"

	self freeTypeFontProviderClass 
		ifNotNil: [:clazz | 
			aClassArgBlock value: clazz].

