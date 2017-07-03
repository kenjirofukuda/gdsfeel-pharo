private
lookupDataExtentForElementsChooserBlock: aElementBlock
	| bounds |
	bounds := GeometryUtils minusBounds.
	(self liveElements select: aElementBlock) do: [:e |
		bounds := bounds merge: e dataBounds.].
	^bounds