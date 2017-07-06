as yet unclassified
preRequiredKeysFor: aSymbol
	| keys orderStream  |
	keys := self requiredOrder.
	(keys includes: aSymbol) ifFalse: [^#()].
	orderStream := keys readStream.
	^(orderStream upTo: aSymbol) allButLast.