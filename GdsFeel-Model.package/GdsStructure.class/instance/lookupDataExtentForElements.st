private
lookupDataExtentForElements
	^ self lookupDataExtentForElementsChooserBlock: [:element | true]
