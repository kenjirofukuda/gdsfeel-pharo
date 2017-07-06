documentation
openReadMe
	"self openReadMe."
	"| window |
	window := SystemWindow allSubInstances 
						detect: [:w | w label sameAs: self readMeTitle] ifNone: [nil].
	window ifNotNil: [window owner ifNotNil: [^self]]."
	(Workspace new contents: self readMeContents; yourself)
		openLabel: self readMeTitle.