testing
existsBaseName: aBaseName
	^ self baseNames anySatisfy: [:each | each sameAs: aBaseName].