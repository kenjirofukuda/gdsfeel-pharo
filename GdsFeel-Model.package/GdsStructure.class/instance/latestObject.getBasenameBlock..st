private
latestObject: aCollection getBasenameBlock: aBlock
	^((aCollection 
		select: [ :obj | (self revisonOfName: (aBlock value: obj)) >= 0 ])
		sort: [ :obj1 :obj2 | 
				(self revisonOfName: (aBlock value: obj1))
			 < (self revisonOfName: (aBlock value: obj2)) ])
				last.