api
title
	^ self manager selectedTab ifNil: [ 'Gds Browser' ] ifNotNil: [ :tab | tab label ]