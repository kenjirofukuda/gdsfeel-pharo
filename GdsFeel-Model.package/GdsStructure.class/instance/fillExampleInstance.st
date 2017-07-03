example
fillExampleInstance
	self currentItem boundary.
	self currentItem layerNumber: 1.
	self currentItem ce: 0@0.
	self currentItem ce: 0@100.
	self currentItem ce: 0@100.
	self currentItem ce: 0@100.
	self currentItem ce: 0@100.
	self currentItem ce: 100@100.
	self currentItem ce: 100@0.
	self currentItem put.
	self currentItem path.
	self currentItem layerNumber: 3.
	self currentItem ce: 0@0.
	self currentItem ce: 0@100.
	self currentItem ce: 100@100.
	self currentItem ce: 100@0.
	self currentItem translate: 20@30.
	self currentItem put.
