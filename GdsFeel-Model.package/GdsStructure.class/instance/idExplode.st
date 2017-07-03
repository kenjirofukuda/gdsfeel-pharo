as yet unclassified
idExplode
	(self idSelection elements select: [ :e | e explodable ])
		do: [ :each | 
			(each refStructure elements collect: [ :e | e copy ])
				do: [ :eachCopied |
					eachCopied removeKeyNumber. 
					eachCopied moveRelative: each strans offset.
					self addElement: eachCopied ] ].
	self idDelete