drawing-pluggable-block
sensorDrawOn: localCanvas layerMorph: morph 
	| p hvPoint cursorForm |
	self viewport ifNil: [^ self].
	p := morph valueOfProperty: #worldPoint ifAbsent: 0@0.

	hvPoint := self viewport xy2hv: p.
	cursorForm := self cursorForm.
	localCanvas 
		paintImage:  cursorForm 
		at: hvPoint + (cursorForm offset).
	
	"self locationPane ifNil: [^self]."
	"localCanvas 
		drawString: self locationPane 
		contents  at: (hvPoint + (50@50)) 
		font: nil 
		color: self visibleGridColor. "
				
	"self penColor: self visiblePenColor during: [
			self drawOn: localCanvas markDiamondPointAt: p ]".

