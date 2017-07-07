drawing
ensureOffCanvas
	^ offCanvas ifNil: [ offCanvas := FormCanvas extent: self extent ]