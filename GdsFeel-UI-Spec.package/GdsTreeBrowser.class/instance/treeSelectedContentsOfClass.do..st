private
treeSelectedContentsOfClass: aClass do: aContentsBlock
	":aGdsStructure [:aTreeNodeItem]"

	tree selectedItem ifNil: [ ^ self ].
	(tree selectedItem content isKindOf: aClass)
		ifTrue: [ aContentsBlock cull: tree selectedItem content cull: tree selectedItem ]