examples
example
	"KFSlideshow example."

	| fdOrFref slideShow images |
	fdOrFref := UIManager default chooseDirectory.
	fdOrFref ifNil: [ ^ self ].
	slideShow := KFSlideshow new.
	images := slideShow
		pngImagesFromPath:
			((fdOrFref className sameAs: 'FileDirectory')
				ifTrue: [ fdOrFref pathName ]
				ifFalse: [ fdOrFref fullName ])
		limit: 20.
	slideShow showImages: images delaySeconds: 3