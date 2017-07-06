accessing
fontUseButtonFont
	(self findDeeplyA: StringMorph)
		ifNotNil: [ :morph | morph font: StandardFonts buttonFont]