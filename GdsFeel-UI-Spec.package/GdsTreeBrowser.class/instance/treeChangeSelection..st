private
treeChangeSelection: item 
	item ifNil: [ ^ self ].
	(item isKindOf: GdsLibrary) ifFalse: [ ^ self ].
	self station library: item