initialization
initializeWidgets
	self initializeMenuBar.
	graphicView := self graphicView.
	graphicView morph on: #mouseMove send: #updateMouseStatus: to: self.
	self focusOrder add: graphicView