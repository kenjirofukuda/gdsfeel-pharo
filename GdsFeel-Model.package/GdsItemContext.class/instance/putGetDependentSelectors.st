private
putGetDependentSelectors
	| col |
	col := OrderedCollection new.
	col add: #boundaryEnabled.
	col add: #pathEnabled.
	col add: #srefEnabled.
	col add: #arefEnabled.
	
	col add: #putEnabled.
	col add: #ungetEnabled.
	col add: #ceEnabled.
	col add: #getElementEnabled.
	col add: #confirmWipeEnabled.

	col add: #itemMoveEnabled.
	col add: #itemStretchEnabled.
	col add: #itemMovePointEnabled.
	col add: #itemDeleteVertexEnabled.
	col add: #itemReverseEnabled.
	
	col add: #chooseLayerEnabled.
	col add: #requestWidthEnabled.
	col add: #choosePathTypeEnabled.

	col add: #chooseStructureNameEnabled.
	col add: #requestAngleEnabled.
	col add: #requestMagEnabled.
	col add: #toggleReflectEnabled.
	col add: #requestArrayShapeEnabled.

	col add: #tstructEnabled.
	col add: #holdsElement.
	"dizitizing direction"
	col add: #vertfirstEnabled.
	col add: #horizfirstEnabled.
	col add: #octagonalEnabled.
	col add: #straightEnabled.
	col add: #orthintEnabled.
	^ col asArray