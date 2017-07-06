development support
lookupColorMap
	| map thElements |
	map := Dictionary new.
	thElements := ('http://sub-atomic.com/~moses/acadcolors.html' asZnUrl retrieveContents parseHTML
		allNodesSelect: [ :e | e name = 'th' ]) allButFirst: 9.
	thElements do: [ :th | map at: th contentString asInteger put: (Color colorFrom: (th attributeAt: 'bgcolor')) ].
	^ map