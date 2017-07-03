action
walk: aStructure do: aBlock
	aBlock cull: aStructure.
	(aStructure directReferenceElements)
		do: [ :e |
			depth := depth + 1.
			self walk: e refStructure do: aBlock.
			depth := depth - 1.
			].
		