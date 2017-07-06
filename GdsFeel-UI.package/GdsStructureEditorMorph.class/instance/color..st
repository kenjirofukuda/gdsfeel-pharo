accessing
color: aColor
	super color: aColor.
	(self allLocationPanes reject: [:each | each isNil])
		do: [:each | self setVisibleBorder: each ].
