as yet unclassified
exampleKanji
	"self exampleKanji"
	|context |
	context := FTBoxTextContext new.
	context fillColor: Color blue.
	context drawOn: Display getCanvas string: 'かけます' bounds: Rectangle fromUser.