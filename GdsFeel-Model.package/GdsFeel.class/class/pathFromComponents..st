private
pathFromComponents: anArray
	^self join: anArray using: (DiskStore current delimiter asString).