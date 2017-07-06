as yet unclassified
structureDidBind
	viewport := self createViewport.			
	lastSessionsGrid ifNotNil: [viewport grid: lastSessionsGrid].

	GdsFeel dependentEnabled
		ifTrue: [
			viewport grid addDependent: self.
			self model layers addDependent: self.].
	
	self portStack add: viewport.							
	self startStepping.
	self mouseLayer startStepping.
	self setVisible: false forKey: #libraryChooser.
	self setVisible: false forKey: #structureChooser.
	self structure announcer when: GdsElementRemoved send: #redraw to: self.
