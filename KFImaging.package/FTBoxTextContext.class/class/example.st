as yet unclassified
example
	"self example"
	|context |
	context := FTBoxTextContext new.
	context fillColor: Color red.

	context drawOn: Display getCanvas string: Time now bounds: Rectangle fromUser.