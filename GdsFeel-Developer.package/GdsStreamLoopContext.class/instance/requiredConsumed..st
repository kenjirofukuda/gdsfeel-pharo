as yet unclassified
requiredConsumed: aSymbol
	| orderStream preRequiredKeys |
	orderStream := self requiredOrder readStream.
	preRequiredKeys := (orderStream upTo: aSymbol) allButLast.
	^preRequiredKeys allSatisfy: [:each | self hasEntry: each]