initialization
structureDidBind
	viewport := self createViewport.
	GdsFeel dependentEnabled
		ifTrue: [			
			self model layers addDependent: self].
	self portStack add: viewport.
