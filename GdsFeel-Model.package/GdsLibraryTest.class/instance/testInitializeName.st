tests
testInitializeName
	"Tests GdsLibrary>>#initializeName:"

	self makeSampleNamed: 'fuck1'.
	self assert: lib libName equals: 'FUCK1'

	"libMap explore."