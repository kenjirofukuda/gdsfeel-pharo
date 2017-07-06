drawing-pluggable-block
drawGridOn: localCanvas layerMorph: morph 
	| gridOff |
	self viewport ifNil: [^self].
	self canGridDraw ifFalse: [^self].
	
	gridOff :=morph valueOfProperty: #gridOff ifAbsent: nil.
	gridOff 
		ifNil: [
			gridOff := FormCanvas extent: morph extent.
			self drawGridOn: gridOff.
			morph setProperty:  #gridOff toValue: gridOff].
	localCanvas paintImage: gridOff form at: 0@0.