initialization
initializeWidgets
	self initializeMenuBar.
	graphicView := self graphicView.
	graphicView morph on: #mouseMove send: #setMouseStatus: to: self.
	self focusOrder add: graphicView