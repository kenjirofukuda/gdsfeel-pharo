deprecated MVC style
fromElement: aGdsElement morph: aMorph
	| drawer |
	drawer := aGdsElement drawerClass new.
	drawer element: aGdsElement.
	drawer morph: aMorph.
	^drawer