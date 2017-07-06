accessing
linesPerScreen
	linesPerScreen ifNil: [linesPerScreen := self defaultLinesPerScreen.].
	 ^linesPerScreen