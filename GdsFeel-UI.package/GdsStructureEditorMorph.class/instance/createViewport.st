initialization
createViewport
	| vp |
	vp := super createViewport.
	lastSessionsGrid ifNotNil: [vp grid: lastSessionsGrid].
	^vp