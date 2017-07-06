tools
currentTool
	tool ifNil: [
		self currentToolClass: self defaultToolClass].
	^tool.