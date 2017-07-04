initialization
initializePresenter
	graphicView morph announcer when: #graphicViewResized send: #graphicViewResized: to: self .
	graphicView morph announcer when: MorphOpened do: [ graphicView morph viewport resetPortCenter ].