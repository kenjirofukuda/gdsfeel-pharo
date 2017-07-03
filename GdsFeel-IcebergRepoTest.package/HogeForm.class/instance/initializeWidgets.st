initialization
initializeWidgets
	self initializeMenuBar.
	graphicView := self graphicView.
	self focusOrder add: graphicView