initialization
initializeWidgets
   document := nil asValueHolder.
	self initializeMenuBar.
	self document: (HgGraphicDocument new installSampleGraphics; yourself) .
	graphicView := self graphicView.
	graphicView morph on: #mouseMove send: #updateMouseStatus: to: self.
	graphicView morph document: self document.
	self focusOrder add: graphicView