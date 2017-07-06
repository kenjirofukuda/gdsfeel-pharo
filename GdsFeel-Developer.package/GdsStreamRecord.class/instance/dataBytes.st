private
dataBytes
	dataBytes ifNil: [dataBytes := self lookupDataBytes ].
	^dataBytes
	