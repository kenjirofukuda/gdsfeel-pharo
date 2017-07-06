debugging-use-only
nodes
	^ tree widget widget allNodeMorphs collect: [ :m | m complexContents ] thenReject: #isNil