private
lookupVertexArray
	^ (self splitByCode: 0) 
		select: [ :each | each first data sameAs: 'VERTEX' ]
		thenCollect: [ :each | DxfPrivateVertex new dataGroups: each ]