private
lookupTransforms
	^ self offsets collect: [ :offset | MatrixTransform2x3 withOffset: offset ]