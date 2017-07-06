as yet unclassified
syncTransform
	self lockTransformUpdate: true.
	[  
	self viewport viewScale: transform scale x.
	self viewport viewCenter: transform translation.
	"self viewport portCenter: transform a11."
	] ensure: [
		self lockTransformUpdate: false.]