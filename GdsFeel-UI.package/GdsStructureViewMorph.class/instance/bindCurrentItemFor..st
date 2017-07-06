initialization
bindCurrentItemFor: aGdsStructure
	self unbindCurrentItemFor: aGdsStructure.
	aGdsStructure currentItem
		ifNotNil: [ :item | 
			item announcer
				when: GdsItemAttributeChanged
				send: #itemAttributeChanged:
				to: self ]