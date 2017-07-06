as yet unclassified
qcadExamplesDxfFiles
	"self qcadExamplesDxfFiles explore."
	self qcadExamplesDirectory 
		ifNotNil: [ :dir | ^ dir filesMatching: '*.dxf'  ].
	^ #()