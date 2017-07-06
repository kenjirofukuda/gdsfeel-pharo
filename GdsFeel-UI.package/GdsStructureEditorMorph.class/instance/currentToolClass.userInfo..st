tools
currentToolClass: aToolClass userInfo: aObject
	tool := aToolClass new setMorph: self.
	tool userInfo: aObject.
	tool toolDidChange.
	tool changeCursor.