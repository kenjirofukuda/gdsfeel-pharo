initialization
initializePresenter
	graphicView morph announcer 
		when: #graphicViewResized send: #graphicViewResized: to: self .
	graphicView morph announcer 
		when: MorphOpened do: [ graphicView morph viewport resetPortCenter ].
	self document graphicsProperty 
		whenChangedSend: #clearOffCanvas to: self graphicView morph. 
	self document graphicsProperty 
		whenChangedSend: #changed to: self graphicView morph. 
	self document graphicsProperty 
		whenChangedDo: [ (menuItemMap at: #clear) enabled: self document graphics notEmpty ]