accessing
repeatTransforms
	^ self relativeTransforms collect: [:each | 
		self transform copy composedWithLocal: each].	