accessing
lineTypes
	^ lineTypes  ifNil: [ lineTypes := self splitAsLinetype ]