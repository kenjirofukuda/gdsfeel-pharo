ui building
registerLibraryFile: aFileReference
	| lib |
	lib := GdsLibrary fromFile: aFileReference.
	self station openLibrary: lib.
	tree roots ifEmpty: [ tree roots: (Array with: lib) ] ifNotEmpty: [ tree roots: tree roots , (Array with: lib) ].
	tabManager addTab: (self newTabForLibrary: lib).
	tree childrenBlock: [ :item | (self childrenFor: item) sort: self structureSortBlock ].
	tree displayBlock: [ :item | self displayNameHandler: item ].
	tree iconBlock: [ :item | self iconFor: item ].
	tree doubleClick: [ self handleDoubleClick ].
	tree menu: [ :m | self inspectionMenu: m ].
	tree whenSelectedItemChanged: [ :item | self treeChangeSelection: item ]