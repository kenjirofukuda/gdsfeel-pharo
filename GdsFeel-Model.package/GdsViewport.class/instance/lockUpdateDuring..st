accessing
lockUpdateDuring: aBlock 
	updateCount := 0.
	lockUpdate := true.
	aBlock value.
	lockUpdate := false.
	updateCount > 0 
		ifTrue: [
			self damageTransform.	].
	updateCount := 0.
	