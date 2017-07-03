tests
testProjectDirectory
	"Tests GdsFeel>>#projectDirectory"
	GdsFeel projectDirectory traceCr.
	GdsFeel projectDirectory fullName traceCr.
	self assert: GdsFeel projectDirectory isDirectory.
	