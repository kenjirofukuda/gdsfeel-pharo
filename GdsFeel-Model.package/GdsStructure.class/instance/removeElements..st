accessing
removeElements: aGdsElementCollection
	| announcement|
	aGdsElementCollection ifEmpty: [ ^ self  ].
	announcement := GdsElementRemoved new elements: aGdsElementCollection.
	elements := elements copyWithoutAll: aGdsElementCollection.
	dataExtentForElements := nil.
	dirtyElements ifNotNil: [dirtyElements removeAllFoundIn: aGdsElementCollection ].
	self announcer announce: announcement.
	"self setDirty: true."
	