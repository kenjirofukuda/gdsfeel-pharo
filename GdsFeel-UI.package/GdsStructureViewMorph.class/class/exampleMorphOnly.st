as yet unclassified
exampleMorphOnly
	"GdsStructureMorph exampleMorphOnly"
	| window |
	window := self new openInWindowLabeled: 'GDSII'.
	"why Color to white"
	(window submorphOfClass: self) color: Color black.