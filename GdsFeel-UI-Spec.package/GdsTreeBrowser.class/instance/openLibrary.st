action - selection independent
openLibrary
	| file |
	file := GdsFeelMorphic
		chooseFullFileName: 'Choose GdsFeel Library File .DB'
		extensions: #('db').
	file ifNil: [ ^ self inform: 'Library open Canceld' ].
	file := file asFileReference.
	(GdsLibrary isLibraryFile: file)
		ifFalse: [
			^ self inform: ('<1p> is not a GdsFeel file' expandMacrosWith: file) ].
	Cursor wait showWhile: [ self registerLibraryFile: file ]