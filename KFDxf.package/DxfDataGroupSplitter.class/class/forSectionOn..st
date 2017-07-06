as yet unclassified
forSectionOn: aGroupCodes
	| splitter |
	splitter := self on: aGroupCodes.
	splitter beginBlock: [ :dataGroup | dataGroup isBeginSection ].
	splitter endBlock: [ :dataGroup | dataGroup isEndSection ].
	^ splitter