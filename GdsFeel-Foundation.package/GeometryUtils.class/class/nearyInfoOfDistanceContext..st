analisys-linesegment
nearyInfoOfDistanceContext: aDistanceContext
	| infos sortItemBlock |
	sortItemBlock := [:context :sel | {sel . context perform: sel . context} ].
	(aDistanceContext start = aDistanceContext cross) 
		ifTrue: [ ^ sortItemBlock value: aDistanceContext value: #start].
	(aDistanceContext end = aDistanceContext cross) 
		ifTrue: [ ^ sortItemBlock value: aDistanceContext value: #end].
	infos := 
		{#start . #end . #cross } 
			collect: [:key | sortItemBlock value: aDistanceContext value: key] .
	^ (infos sort: [:a :b | a second < b second ]) first. 
	