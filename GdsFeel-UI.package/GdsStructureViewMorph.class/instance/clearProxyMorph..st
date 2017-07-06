utility
clearProxyMorph: aGdsElement
	(aGdsElement valueOfProperty: #proxyMorph ifAbsent: [  ])
		ifNotNil: [ :m | self removeMorph: m ].
	aGdsElement removeProperty: #proxyMorph