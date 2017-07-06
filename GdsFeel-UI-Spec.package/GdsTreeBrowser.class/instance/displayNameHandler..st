menu building
displayNameHandler: anItem
	"self halt."

	(anItem isKindOf: GdsLibrary)
		ifTrue: [ ^ anItem name ].
	^ TextMorph new
		contents:
				(anItem name asText
						addAttribute:
								((anItem valueOfProperty: #visible ifAbsent: [ true ])
										ifFalse: [ TextEmphasis struckOut ]
										ifTrue: [ TextEmphasis normal ]);
						yourself);
		lock;
		yourself