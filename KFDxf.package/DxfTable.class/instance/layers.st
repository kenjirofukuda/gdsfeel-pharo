accessing
layers
	^ layers ifNil: [ layers := self splitAsLayer ]