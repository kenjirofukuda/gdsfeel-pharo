initialization
createSensorLayer
	| m sm |
	m := self layerForKey: #mouse.
	m model: self.
	m clipSubmorphs: true.
	m setProperty: #cursorForm toValue: self createViewingCursorForm.
	
	"Realtime"
	sm := self createLocationPane. 
	m addMorph: sm.
 	m setProperty: #locationPane toValue: sm.

	"reference point"
	sm := self createLocationPane. 
	m addMorph: sm.
 	m setProperty: #referenceLocationPane toValue: sm.
	sm visible: false.
	
	"reference point"
	sm := self createLocationPane. 
	m addMorph: sm.
 	m setProperty: #deltaLocationPane toValue: sm.
	sm visible: false.
	
	^m