initialization
initializeWidgets
	"self instantiateModels: #(tree TreeModel menu MenuModel structure MorphicModel )"
	"@see: createBalloonView."
	self station autoCloseLibrary: false.
	self initializeMenu.
	tree := self newTree.
	tabManager := self newTabManager.
	structureSortBlock := [ :s1 :s2 | s1 name < s2 name ] asValueHolder.
	elementList := self newList.
	visibleElementList := self newList.	
	inspectorMorph := GeneralScrollPane new
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	inspectorMorph changeScrollerTableLayout.
	self clearInspector.
	layers := AlignmentMorph new asSpecAdapter.
	kinds := GdsKindsSpecView new.
	layers := GdsLayersSpecView new.
	
	"inspectorMorph layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ 25 corner: 0 @ 0))."