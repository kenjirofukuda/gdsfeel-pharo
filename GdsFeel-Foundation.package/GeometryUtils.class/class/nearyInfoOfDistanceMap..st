analisys-linesegment
nearyInfoOfDistanceMap: aDictionary
	| infos sortItemBlock |
	sortItemBlock := [:map :sel | {sel . map at: sel . map} ].
	((aDictionary at: #start) = (aDictionary at: #cross)) 
		ifTrue: [^sortItemBlock value: aDictionary value: #start].
	((aDictionary at: #end) = (aDictionary at: #cross)) 
		ifTrue: [^sortItemBlock value: aDictionary value: #end].
	infos := (aDictionary keys select: [:each | 
		{#start . #end . #cross } includes: each]) asArray 
			collect: [:key | sortItemBlock value: aDictionary value: key] .
	^(infos sort: [:a :b | a second < b second]) first. 
	