initialization
customMenu
	"Answer the menu to be presented when the yellow button is pressed while the shift key is down"
	| menuSpec |
	menuSpec := (PragmaMenuBuilder pragmaKeyword: 'gdsStructureEditorMenu' model: self) menuSpec.
	menuSpec items ifEmpty: [ ^ self emptyMenu  ].
	^ MenuModel new fromSpec: menuSpec.