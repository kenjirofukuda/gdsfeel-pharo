tests
testLibraries
	| |
	self assert: GdsStation default libraries notEmpty.
	UIManager default chooseFrom: (GdsStation default libraries collect: [:l | l name] ). 
