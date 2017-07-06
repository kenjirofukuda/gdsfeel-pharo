enumerating
selectedTabDo: tabBlock ifNil: emptyTabBlock
	tabManager selectedTab
		ifNotNil: [ :tab | 
			tab contents
				ifNil: emptyTabBlock
				ifNotNil: [ :contents | tabBlock cull: contents ] ]
		ifNil: emptyTabBlock