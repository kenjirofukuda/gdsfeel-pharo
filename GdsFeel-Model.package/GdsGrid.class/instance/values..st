accessing
values: anArray
	self assert: [anArray isNil not].
	self assert: [anArray allSatisfy: [:each | each isNumber]].
	self assert: [#(1 2 4) includes: anArray size].
	anArray ifEmpty: [^self].
	anArray size = 1
		ifTrue: [
			scaleX := anArray at: 1.
			scaleY := anArray at: 1.].
	anArray size = 2
		ifTrue: [
			scaleX := anArray at: 1.
			scaleY := anArray at: 2.].
	anArray size = 4
		ifTrue: [
			offsetX := anArray at: 1.
			offsetY := anArray at: 2.
			scaleX := anArray at: 3.
			scaleY := anArray at: 4.].

	self changed: #gridScale.
	anArray size = 4 
		ifTrue: [self changed: #gridOffset.].
	self displayMultiply: 1.
	